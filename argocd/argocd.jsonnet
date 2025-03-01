local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.argocd;

[
  argocd.applicationHelm(
    name='argocd',
    targetnamespace='argocd',
    chart=chart,
    releaseName='argocd',
    values={
      dex: {
        enabled: false,
      },
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
        gpg: {
          keys: {
            BE449B7420CD3C60: |||
              -----BEGIN PGP PUBLIC KEY BLOCK-----

              mDMEY78xwhYJKwYBBAHaRw8BAQdA2yprP8todlZZt2pEXQbGi8GXk7znuJvrgJ+6
              4m1iUaO0FktldmluIDxrZXZpbkBrb2tldi5kZT6IjwQTFggANxYhBG+FGtjke+h4
              xVY1z75Em3QgzTxgBQJjvzHCBQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQ
              vkSbdCDNPGDR2AD+L1MGyyqOWEE0saxvRur/NfGu9VCvs0swH9PYzVT2k6MBAJwE
              37XxoDBdWNqHQ/n2zxEG0GH/rb2Q0a3R5GM/418PuDgEY78xwhIKKwYBBAGXVQEF
              AQEHQH9zWbqLqi1VATVjT4CqFa2AMkLWqv1kz3SZYQ/xpGgGAwEIB4h+BBgWCAAm
              FiEEb4Ua2OR76HjFVjXPvkSbdCDNPGAFAmO/McIFCQWjmoACGwwACgkQvkSbdCDN
              PGDV2QEAg9mLVXiulRih4PuL+6PPtAV18K2lyUSvMFD+GvRJzRYBALGSXEF8jtyU
              x2tAeGDdTwNp7boURyTZvgnR6OZy4CEB
              =OW4w
              -----END PGP PUBLIC KEY BLOCK-----
            |||,
          },
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
  ),
  argocd.appProject('gpg', ['BE449B7420CD3C60']),
]
