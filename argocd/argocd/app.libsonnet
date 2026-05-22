local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.argocd;
local valkey = (import 'images.libsonnet').container.valkey;
local ksopsImage = (import 'images.libsonnet').container.ksops;
local k8s = import 'k8s.libsonnet';
local globals = import 'globals.libsonnet';

local config = import 'config.libsonnet';

local name = 'argocd';
local namespace = 'argocd';

local sops_secret_name = 'argocd-sops-key';

local ksops = {
  configs+: {
    cm+: {
      // Enable Kustomize Alpha Plugins via Argo CD ConfigMap, required for ksops
      'kustomize.buildOptions': '--enable-alpha-plugins --enable-exec',
    },
  },
  repoServer+: {
    env+: [
      {
        name: 'SOPS_AGE_KEY_FILE',
        value: '/home/argocd/.config/sops/age/age.key',
      },
      {
        name: 'XDG_CONFIG_HOME',
        value: '/home/argocd/.config',
      },
    ],
    volumes+: [
      {
        name: 'custom-tools',
        emptyDir: {},
      },
      {
        name: 'sops-age',
        secret: {
          secretName: 'sops-age-key-file',
        },
      },
    ],
    initContainers+: [
      {
        name: 'install-ksops',
        image: '%s:%s' % [ksopsImage.image, ksopsImage.tag],
        command: [
          '/usr/local/bin/ksops',
          'install',
          '--with-kustomize',
          '/custom-tools',
        ],
        volumeMounts: [
          {
            mountPath: '/custom-tools',
            name: 'custom-tools',
          },
        ],
      },
    ],
    volumeMounts+: [
      {
        mountPath: '/usr/local/bin/kustomize',
        name: 'custom-tools',
        subPath: 'kustomize',
      },
      {
        mountPath: '/usr/local/bin/ksops',
        name: 'custom-tools',
        subPath: 'ksops',
      },
      {
        name: 'sops-age',
        mountPath: '/home/argocd/.config/sops/age',
        readOnly: true,
      },
    ],
  },
};

[
  k8s.secret.externalSecretExtract(sops_secret_name, namespace),
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
    } + ksops
  ),
  argocd.appProject('gpg', std.objectFields(config.gpg_keys)),
  k8s.secret.externalSecretExtract('%s-redis' % name, namespace),
]
