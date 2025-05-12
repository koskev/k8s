local chart = (import 'images.libsonnet').helm.grafana;
local k8s = import 'k8s.libsonnet';

local name = 'grafana-operator';
local namespace = 'grafana';

[
  k8s.secret.externalSecretExtract('grafana-admin', namespace),
  k8s.builder.argocd.helm.new(
    name=name,
    targetnamespace=namespace,
    releaseName='grafana-operator',
    chart=chart
  )
  .withAutoSync()
  .withServerSideApply(),
  k8s.builder.definition.new('grafana.integreatly.org/v1beta1', 'Grafana', 'grafana', namespace)
  .withSpec({
    deployment: {
      spec: {
        template: {
          spec: {
            containers: [
              {
                name: 'grafana',
                env: [
                  {
                    name: 'GF_SECURITY_ADMIN_USER',
                    valueFrom: {
                      secretKeyRef: {
                        key: 'user',
                        name: 'grafana-admin',
                      },
                    },
                  },
                  {
                    name: 'GF_SECURITY_ADMIN_PASSWORD',
                    valueFrom: {
                      secretKeyRef: {
                        key: 'password',
                        name: 'grafana-admin',
                      },
                    },
                  },
                ],
              },
            ],
          },
        },
      },
    },
    config: {
      log: {
        mode: 'console',
      },
      auth: {
        disable_login_form: 'false',
      },
    },
  }),
  k8s.builder.definition.new('grafana.integreatly.org/v1beta1', 'GrafanaDatasource', 'prometheus', namespace)
  .withSpec({
    instanceSelector: {
      matchLabels: {
        app: 'grafana',
      },
    },
    datasource: {
      name: 'prometheus',
      type: 'prometheus',
      url: 'http://prometheus-kube-prometheus-prometheus.monitoring:9090',
    },
  }),

  k8s.builder.definition.new('grafana.integreatly.org/v1beta1', 'GrafanaDashboard', 'cnpg', namespace)
  .withSpec({
    resyncPeriod: '30s',
    instanceSelector: {
      matchLabels: {
        app: 'grafana',
      },
    },
    json: importstr './dashboards/cloudnative_pg.json',
  }),
  k8s.builder.definition.new('grafana.integreatly.org/v1beta1', 'GrafanaDashboard', 'solar', namespace)
  .withSpec({
    resyncPeriod: '30s',
    instanceSelector: {
      matchLabels: {
        app: 'grafana',
      },
    },
    json: importstr './dashboards/solar.json',
  }),
]
