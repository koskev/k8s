function(input=import 'defaultInput.libsonnet')
  local argocd = import 'argocd.libsonnet';
  local chart = (import 'images.libsonnet').helm.argocd;
  local valkey = (import 'images.libsonnet').container.valkey;
  local k8s = import 'k8s.libsonnet';
  local tf = import 'tf/tf.libsonnet';


  local name = 'argocd';
  local namespace = 'argocd';

  local domain = '%s.%s' % [input.argocd.config.subdomain, input.globals.config.domain];

  local gpgProject = argocd.appProject('gpg', std.objectFields(input.argocd.config.gpg_keys));
  local rootRepo = argocd.applicationRepo(
    name='root',
    targetnamespace='argocd',
    path='argocd/clusters/%s' % input.globals.config.id,
    autosync=true,
  );

  local helmValues = {
    dex: {
      enabled: true,
    },
    global: {
      domain: domain,
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
                issuer: 'https://%s.%s' % [input.applications.authelia.config.subdomain, input.globals.config.domain],
                clientID: 'argocd',
                clientSecret: '$argocd-oidc-secret:dex.authentik.clientSecret',
                insecureEnableGroups: true,
                getUserInfo: true,
                scopes: [
                  'openid',
                  'email',
                  'profile',
                  'groups',
                ],
              } + if input.globals.config.id == 'test' then { insecureSkipVerify: true } else {},
            },

          ],
        }),
      },
      params: {
        'server.insecure': true,
      },
      rbac: {
        'policy.csv': |||
          g, ArgoCD Admins, role:admin
          g, admins, role:admin
        |||,
      },
      gpg: {
        keys: input.argocd.config.gpg_keys,
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
          hosts: [domain],
          secretName: '%s-tls' % name,
        }],
      },
    },
  };


  local argocdHelm = argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    releaseName=name,
    values=helmValues,
  );


  local dependencies = ['helm_release.argocd-bootstrap', 'kubernetes_namespace_v1.argocd-namespace'];
  [
    tf.stage('bootstrap', std.objectValues({

      helm: tf.providers.helm.resource.helmRelease.new('argocd-bootstrap', chart.chart, name)
            .withNamespace(namespace)
            .withRepository(chart.repoURL)
            .withVersion(chart.targetRevision)
            .withValues(
        [std.toString(helmValues)]
      ),
      namespace: tf.providers.kubernetes.resource.kubernetesNamespaceV1.new('argocd-namespace').addCustomData('metadata', {
        name: namespace,
      }),
      project: tf.providers.kubectl.resource.kubectlManifest.new('argocd-bootstrap-gpg', std.toString(gpgProject)).withDependsOn(dependencies),
      root: tf.providers.kubectl.resource.kubectlManifest.new('bootstrap-root-repo', std.toString(rootRepo)).withDependsOn(dependencies),
    })),
    rootRepo,
    gpgProject,
    argocdHelm,
    argocd.appProject('default'),
    k8s.secret.externalSecretExtract(
      'argocd-oidc-secret',
      namespace,
      key='oidc/argocd',
      templateData={
        'dex.authentik.clientSecret': '{{ .password }}',
      },
      labels={
        'app.kubernetes.io/part-of': name,
      }
    ),
  ]
