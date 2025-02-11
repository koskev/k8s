local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.kube_prometheus;

argocd.applicationHelm(
  name='kube-prometheus',
  targetnamespace='monitoring',
  chart=chart.chart,
  chartUrl=chart.chartUrl,
  chartVersion=chart.chartVersion,
  releaseName='prometheus',
  valuesToString=true,
  values={
    namespaceOverride: 'monitoring',
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
        'auth.jwt': {
          enabled: true,
          header_name: 'X-AUTH-TOKEN',
          username_claim: 'sub',
          email_claim: 'sub',
          key_file: '/jwt/jwt.pub',
          url_login: true,
          auto_sign_up: true,
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
      extraSecretMounts: [
        {
          name: 'jwt-key',
          mountPath: '/jwt',
          secretName: 'jwt-secret',
          readOnly: true,
          subpath: 'jwt.pub',
        },
      ],
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
)
