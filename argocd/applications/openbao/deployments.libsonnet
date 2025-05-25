local psqlConfig = import 'argocd/applications/postgres/cnpg/config.libsonnet';
local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.openbao;

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
          ingress: {
            enabled: true,
            annotations: {
              'cert-manager.io/cluster-issuer': 'kokev-issuer',
            },
            ingressClassName: 'nginx',
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
  ],
}
