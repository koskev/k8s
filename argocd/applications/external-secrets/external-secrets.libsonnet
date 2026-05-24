local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.external_secrets;
local tf = import 'tf/tf.libsonnet';

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
  tf.resource('vault_policy', name, {
    name: name,

    policy: |||
      path "secrets/*" {
        capabilities = ["create", "read", "update", "patch", "delete", "list"]
      }
    |||,
  }),

  tf.resource('vault_kubernetes_auth_backend_role', name, {
    backend: '${vault_auth_backend.kubernetes.path}',
    role_name: 'external-secrets-role',
    bound_service_account_names: [name],
    bound_service_account_namespaces: [name],
    token_ttl: 3600,
    token_policies: [name],
  }),
  tf.moved('vault_kubernetes_auth_backend_role.example', 'vault_kubernetes_auth_backend_role.%s' % name),
]
