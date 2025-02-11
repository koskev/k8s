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
      cm: {
        'resource.customizations.ignoreDifferences.admissionregistration.k8s.io_MutatingWebhookConfiguration': "jqPathExpressions:\n- '.webhooks[]?.clientConfig.caBundle'\n",
        // In metallb crd
        'resource.customizations.ignoreDifferences.apiextensions.k8s.io_CustomResourceDefinition': "jqPathExpressions:\n- '.spec.conversation.webhook.clientConfig.caBundle'\n",
      },
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
