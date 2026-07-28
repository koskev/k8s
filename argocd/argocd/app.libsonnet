function(input=import 'defaultInput.libsonnet')
  local argocd = import 'argocd.libsonnet';
  local chart = (import 'images.libsonnet').helm.argocd;
  local valkey = (import 'images.libsonnet').container.valkey;
  local k8s = import 'k8s.libsonnet';
  local globals = import 'globals.libsonnet';
  local tf = import 'tf/tf.libsonnet';


  local name = 'argocd';
  local namespace = 'argocd';
  local gpgProject = argocd.appProject('gpg', std.objectFields(input.argocd.config.gpg_keys));
  [
    tf.stage('bootstrap', [
      tf.providers.helm.resource.helmRelease.new('argocd-bootstrap', chart.chart, name)
      .withNamespace(namespace)
      .withRepository(chart.repoURL)
      .withVersion(chart.targetRevision)
      .withValues([std.toString({
        gpg: {
          keys: input.argocd.config.gpg_keys,
        },
      })]),
      tf.providers.kubernetes.resource.kubernetesManifest.new('argocd-bootstrap-gpg', gpgProject),
    ]),
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
          domain: input.argocd.config.hostname,
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
                  name: 'authelia',
                  type: 'oidc',
                  id: 'authelia',
                  config: {
                    issuer: globals.urls.auth,
                    clientID: 'argocd',
                    clientSecret: '$dex.authentik.clientSecret',
                    insecureEnableGroups: true,
                    getUserInfo: true,
                    scopes: [
                      'openid',
                      'email',
                      'profile',
                      'groups',
                    ],
                  },
                },

              ],
            }),
          },
          params: {
            'server.insecure': true,
          },
          gpg: {
            keys: input.argocd.config.gpg_keys,
          },
          secret: {
            createSecret: false,
          },
          rbac: {
            'policy.csv': |||
              g, ArgoCD Admins, role:admin
              g, admins, role:admin
            |||,
          },
        },
        server: {
          ingress: {
            enabled: true,
            ingressClassName: input.globals.config.ingress.internal.name,
            annotations: {
              'cert-manager.io/cluster-issuer': input.globals.config.default_issuer,
            },
            extraTls: [{
              hosts: [input.argocd.config.hostname],
              secretName: '%s-tls' % name,
            }],
          },
        },

      }
    ),
    gpgProject,
    argocd.appProject('default'),
    k8s.secret.externalSecretExtract('%s-redis' % name, namespace),
    k8s.secret.externalSecretExtract('argocd-secret', namespace),
  ]
