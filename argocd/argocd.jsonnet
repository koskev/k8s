local argocd = import 'argocd.libsonnet';
argocd.applicationHelm(
  name='argocd',
  targetnamespace='argocd',
  chart='argo-cd',
  chartUrl='https://argoproj.github.io/argo-helm',
  chartVersion='7.7.16',
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
