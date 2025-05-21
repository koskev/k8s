local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.external_secrets;

[
  argocd.applicationHelm(
    name='external-secrets',
    targetnamespace='external-secrets',
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
                name: 'external-secrets',
                namespace: 'external-secrets',
              },
            },
          },
        },
      },
    },
  },
]
