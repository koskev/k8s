local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.external_secrets;
local tf = import 'tf/tf.libsonnet';

local name = 'external-secrets';
local namespace = 'external-secrets';

[
  k8s.builder.argocd.helm.new(
    name,
    namespace,
    chart,
    name,
  )
  .withServerSideApply()
  .withAutoSync()
  .withValues({
    genericTargets: {
      enabled: true,
      resources: [
        {
          apiGroup: 'cert-manager.io',
          resources: ['issuers'],
          verbs: ['get', 'list', 'watch', 'create', 'update', 'patch', 'delete'],
        },
        {
          apiGroup: 'networking.k8s.io',
          resources: ['ingresses'],
          verbs: ['get', 'list', 'watch', 'create', 'update', 'patch', 'delete'],
        },
      ],
    },
  })
  ,
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
