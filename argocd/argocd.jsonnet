local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.argocd;

argocd.applicationHelm(
  name='argocd',
  targetnamespace='argocd',
  chart=chart.chart,
  chartUrl=chart.chartUrl,
  chartVersion=chart.chartVersion,
  releaseName='argocd',
  values={
    global: {
      domain: 'argocd.kokev.de',
    },
    redis: {
      image: {
        repository: 'valkey/valkey',
        tag: '8.0.2-alpine',
      },
    },
    configs: {
      params: {
        'server.insecure': true,
      },
    },
    server: {
      ingress: {
        enabled: true,
        ingressClassName: 'nginx',
        annotations: {
          'cert-manager.io/cluster-issuer': 'kokev-issuer',
        },
        extraTls: [{
          hosts: ['argocd.kokev.de'],
          secretName: 'argocd-tls',
        }],
      },
    },

  }
)
