local psqlConfig = import 'argocd/applications/postgres/cnpg/config.libsonnet';
local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.openbao;
local globals = import 'globals.libsonnet';
local tf = import 'tf/tf.libsonnet';

local adminUser = 'admin';

{
  deplyoment(name, namespace, host, rollingUpdate=false, transit=null):: [
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
          ingress: {
            enabled: true,
            annotations: {
              'cert-manager.io/cluster-issuer': 'kokev-issuer',
            },
            ingressClassName: globals.ingress.internal.name,
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
    tf.resource('vault_jwt_auth_backend', 'oidc_config', {
      path: 'oidc',
      oidc_discovery_url: 'https://auth.%s' % globals.domain,
      oidc_client_id: 'openbao',
      oidc_client_secret: '${data.sops_file.openbao_secrets["openbao_secrets/oidc/openbao.enc.yaml"].data["password"]}',
      default_role: adminUser,
      type: 'oidc',
    }),
    tf.resource('vault_jwt_auth_backend_role', 'example', {
      backend: '${vault_jwt_auth_backend.oidc_config.path}',
      role_name: adminUser,
      token_policies: [adminUser],
      bound_audiences: ['openbao'],
      oidc_scopes: ['openid', 'profile', 'email', 'groups'],
      allowed_redirect_uris: [
        'https://vault.%s/ui/vault/auth/oidc/oidc/callback' % globals.domain,
        'https://vault.%s/oidc/callback' % globals.domain,
        'http://localhost:8250/oidc/callback',
      ],
      user_claim: 'sub',
      groups_claim: 'groups',
      bound_claims: { groups: 'admins' },
    }),
    tf.resource('vault_policy', adminUser, {
      name: adminUser,
      policy: |||
        path "*" {
          capabilities = ["read", "create", "list", "update", "patch", "update", "delete", "sudo"]
        }
      |||,
    }),
  ],
}
