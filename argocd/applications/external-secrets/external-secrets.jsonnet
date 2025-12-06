local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.external_secrets;

local name = 'external-secrets';
local namespace = 'external-secrets';

[
  argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=chart,
    releaseName='external-secrets',
  ),
  {
    apiVersion: 'external-secrets.io/v1',
    kind: 'ClusterSecretStore',
    metadata: {
      name: 'vault-secrets',
    },
    spec: {
      provider: {
        vault: {
          server: 'http://openbao.openbao:8200',
          path: 'secrets',
          version: 'v2',
          auth: {
            kubernetes: {
              mountPath: 'kubernetes',
              role: 'external-secrets-role',
              serviceAccountRef: {
                name: name,
                namespace: namespace,
              },
            },
          },
        },
      },
    },
  },
]
