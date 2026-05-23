local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.argocd;
local valkey = (import 'images.libsonnet').container.valkey;
local k8s = import 'k8s.libsonnet';
local globals = import 'globals.libsonnet';

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
        enabled: true,
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
          'dex.config': std.toString({
            connectors: [
              {
                config: {
                  issuer: 'https://auth.kokev.de/application/o/argocd/',
                  clientID: 'argocd',
                  clientSecret: '$dex.authentik.clientSecret',
                  insecureEnableGroups: true,
                  scopes: [
                    'openid',
                    'profile',
                    'email',
                  ],
                  claimMapping: {
                    name: 'username',
                  },
                },
                name: 'authentik',
                type: 'oidc',
                id: 'authentik',
              },
            ],
          }),
        },
        params: {
          'server.insecure': true,
        },
        gpg: {
          keys: config.gpg_keys,
        },
        secret: {
          createSecret: false,
        },
        rbac: {
          'policy.csv': |||
            g, ArgoCD Admins, role:admin
          |||,
        },
      },
      server: {
        ingress: {
          enabled: true,
          ingressClassName: globals.ingress.internal.name,
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
  argocd.appProject('default'),
  k8s.secret.externalSecretExtract('%s-redis' % name, namespace),
  k8s.secret.externalSecretExtract('argocd-secret', namespace),
]
