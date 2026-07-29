function(input=import 'defaultInput.libsonnet')
  local psqlConfig = import 'argocd/applications/postgres/cnpg/config.libsonnet';
  local k8s = import 'k8s.libsonnet';
  local chart = (import 'images.libsonnet').helm.openbao;
  local tf = import 'tf/tf.libsonnet';

  local adminUser = 'admin';

  {
    deplyoment(name, namespace, host, rollingUpdate=false, transit=null):: [
      (import './autoInit.libsonnet')(input),
      k8s.v1.namespace(namespace),
      k8s.db.database(
        name=name,
        namespace=namespace,
      ),
      k8s.db.user(
        name=name,
        namespace=namespace,
        secretTemplate={
          POSTGRES_URL_NO_SSL: 'postgresql://{{.Role}}:{{.Password}}@%s/{{.Database}}?sslmode=disable' % psqlConfig.pools.default.getHost(),
        },
      ),
      k8s.argocd.applicationHelm(
        name=name,
        targetnamespace=namespace,
        chart=chart,
        values={
          ui: {
            enabled: true,
          },
          server: {
            [if rollingUpdate then 'updateStrategyType']: 'RollingUpdate',
            // The chart changes that to OrderedReady but the field is immutable
            podManagementPolicy: 'Parallel',
            [if input.applications.openbao.config.affinity != null then 'affinity']: input.applications.openbao.config.affinity,
            ingress: {
              enabled: true,
              annotations: {
                'cert-manager.io/cluster-issuer': input.globals.config.default_issuer,
              },
              ingressClassName: input.globals.config.ingress.internal.name,
              hosts: [
                {
                  host: host,
                },
              ],
              tls: [
                {
                  secretName: '%s-tls' % name,
                  hosts: [
                    host,
                  ],
                },
              ],
            },
            ha: {
              enabled: true,
              config:
                |||
                  ui = true

                  listener "tcp" {
                    tls_disable = 1
                    address = "[::]:8200"
                    cluster_address = "[::]:8201"
                  }
                  storage "postgresql" {
                    ha_enabled = "true"
                  }

                  service_registration "kubernetes" {}
                |||,
            },
            extraSecretEnvironmentVars: [
              {
                envName: 'BAO_PG_CONNECTION_URL',
                secretKey: 'POSTGRES_URL_NO_SSL',
                secretName: '%s-%s' % [name, name],
              },
            ],
          },
        },
      ),
      tf.providers.vault.resource.vaultAuthBackend.new('kubernetes', 'kubernetes'),
      tf.providers.vault.resource.vaultKubernetesAuthBackendConfig.new('example', 'https://kubernetes.default.svc')
      .withBackend(tf.providers.vault.resource.vaultAuthBackend.ref('kubernetes').fields.path())
      .withIssuer('api')
      .withDisableIssValidation('true')
      ,
      tf.providers.vault.resource.vaultJwtAuthBackend.new('oidc_config')
      .withPath('oidc')
      .withOidcDiscoveryUrl('https://auth.%s' % input.globals.config.domain)
      .withOidcClientId('openbao')
      .withOidcClientSecret(tf.providers.sops.data.sopsFile.ref('openbao_secrets["openbao_secrets/oidc/openbao.enc.yaml"]').fields.data('["password"]'))
      .withDefaultRole(adminUser)
      .withType('oidc')
      ,
      tf.providers.vault.resource.vaultJwtAuthBackendRole
      .new('example', adminUser, 'sub')
      .withBackend(tf.providers.vault.resource.vaultJwtAuthBackend.ref('oidc_config').fields.path())
      .withTokenPolicies([adminUser])
      .withBoundAudiences(['openbao'])
      .withOidcScopes(['openid', 'profile', 'email', 'groups'])
      .withAllowedRedirectUris([
        'https://vault.%s/ui/vault/auth/oidc/oidc/callback' % input.globals.config.domain,
        'https://vault.%s/oidc/callback' % input.globals.config.domain,
        'http://localhost:8250/oidc/callback',
      ])
      .withGroupsClaim('groups')
      .withBoundClaims({ groups: 'admins' })
      ,
      tf.providers.vault.resource.vaultPolicy.new(
        adminUser,
        policy=
        |||
          path "*" {
            capabilities = ["read", "create", "list", "update", "patch", "update", "delete", "sudo"]
          }
        |||,
        name=adminUser,
      ),
    ],
  }
