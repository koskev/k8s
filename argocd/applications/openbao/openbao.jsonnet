local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.openbao;

[
  {
    apiVersion: 'db.movetokube.com/v1alpha1',
    kind: 'Postgres',
    metadata: {
      name: 'openbao',
      namespace: 'openbao',
    },
    spec: {
      database: 'openbao',
      dropOnDelete: false,
    },
  },
  {
    apiVersion: 'db.movetokube.com/v1alpha1',
    kind: 'PostgresUser',
    metadata: {
      name: 'openbao',
      namespace: 'openbao',
    },
    spec: {
      role: 'openbao',
      database: 'openbao',
      secretName: 'openbao',
      privileges: 'OWNER',
      secretTemplate: {
        POSTGRES_URL_NO_SSL: 'postgresql://{{.Role}}:{{.Password}}@{{.Host}}/{{.Database}}?sslmode=disable',
      },
    },
  },
  argocd.applicationHelm(
    name='openbao',
    targetnamespace='openbao',
    chart=chart,
    values={
      ui: {
        enabled: true,
      },
      server: {
        updateStrategyType: 'RollingUpdate',
        ingress: {
          enabled: true,
          annotations: {
            'cert-manager.io/cluster-issuer': 'kokev-issuer',
          },
          ingressClassName: 'nginx',
          hosts: [
            {
              host: 'vault.kokev.de',
            },
          ],
          tls: [
            {
              secretName: 'vault-tls',
              hosts: [
                'vault.kokev.de',
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
            secretName: 'openbao-openbao',
          },
        ],
      },
    },
  ),
]
