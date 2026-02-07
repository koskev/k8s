local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.argocd;
local valkey = (import 'images.libsonnet').container.valkey;
local k8s = import 'k8s.libsonnet';

local config = import 'config.libsonnet';

local name = 'argocd';
local namespace = 'argocd';
[
  argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    releaseName=name,
    values={
      dex: {
        enabled: false,
      },
      global: {
        domain: config.hostname,
      },
      redisSecretInit: {
        // Disable and get from bao due to infinite job bug
        enabled: false,
      },
      redis: {
        image: {
          repository: valkey.image,
          tag: valkey.tag,
        },
      },
      configs: {
        cm: {
          'resource.customizations.ignoreDifferences.admissionregistration.k8s.io_MutatingWebhookConfiguration': "jqPathExpressions:\n- '.webhooks[]?.clientConfig.caBundle'\n",
          // In metallb crd
          'resource.customizations.ignoreDifferences.apiextensions.k8s.io_CustomResourceDefinition': "jqPathExpressions:\n- '.spec.conversion.webhook.clientConfig.caBundle'\n",
        },
        params: {
          'server.insecure': true,
        },
        gpg: {
          keys: config.gpg_keys,
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
            hosts: [config.hostname],
            secretName: '%s-tls' % name,
          }],
        },
      },

    }
  ),
  argocd.appProject('gpg', std.objectFields(config.gpg_keys)),
  k8s.secret.externalSecretExtract('%s-redis' % name, namespace),
]
