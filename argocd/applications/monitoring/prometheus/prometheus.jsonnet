local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.kube_prometheus;
local secret = import 'secret.libsonnet';
local storage = import 'storage.libsonnet';

[
  storage.localPersistentVolume(
    name='grafana-pv',
    namespace='monitoring',
    sizeGB=10,
    path='/mnt/shared_data/k8s/prometheus/grafana_data',
    storageclass='local'
  ),
  storage.localPersistentVolume(
    name='prometheus-db',
    namespace='monitoring',
    sizeGB=10,
    path='/mnt/shared_data/k8s/prometheus/prometheus_data',
    storageclass='local'
  ),

  secret.externalSecretExtract('prometheus-secret', 'monitoring'),

  argocd.applicationHelm(
    name='kube-prometheus',
    targetnamespace='monitoring',
    chart=chart,
    releaseName='prometheus',
    valuesToString=true,
    values={
      namespaceOverride: 'monitoring',
      crds: {
        upgradeJob: {
          enabled: true,
        },
      },
      grafana: {
        smtp: {
          existingSecret: 'prometheus-secret',
          userKey: 'smtp_user',
          passwordKey: 'smtp_password',
        },
        'grafana.ini': {
          server: {
            root_url: 'https://grafana.kokev.de',
          },
          smtp: {
            enabled: true,
            host: 'mail.kokev.de:465',
            from_address: 'grafana@kokev.de',
          },
        },
        persistence: {
          type: 'sts',
          enabled: true,
          storageClassName: 'local',
          selectorLabels: {
            storage: 'grafana',
          },
        },
        ingress: {
          enabled: true,
          ingressClassName: 'nginx',
          annotations: {
            'cert-manager.io/cluster-issuer': 'kokev-issuer',
          },
          paths: [
            '/',
          ],
          hosts: [
            'grafana.kokev.de',
          ],
          tls: [
            {
              hosts: [
                'grafana.kokev.de',
              ],
              secretName: 'grafana-tls',
            },
          ],
        },
      },
      prometheus: {
        prometheusSpec: {
          podMonitorSelector: {
            matchLabels: null,
          },
          ruleSelector: {
            matchLabels: null,
          },
          serviceMonitorSelector: {
            matchLabels: null,
          },
          probeSelector: {
            matchLabels: null,
          },
          storageSpec: {
            volumeClaimTemplate: {
              spec: {
                accessModes: [
                  'ReadWriteOnce',
                ],
                volumeName: 'prometheus-db',
                storageClassName: 'local',
                resources: {
                  requests: {
                    storage: '10Gi',
                  },
                },
              },
            },
          },
          additionalScrapeConfigsSecret: {
            enabled: true,
            name: 'prometheus-secret',
            key: 'server_config',
          },
        },
      },
    }
  ),
]
