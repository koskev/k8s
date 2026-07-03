{
  new(terraformName, kubernetes_namespace, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: {
        kubernetes_namespace: kubernetes_namespace,
        backend: backend,
        role: role,
      } },
    },
    withId(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { id: value } },
      },
    },
    withServiceAccountNamespace(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { service_account_namespace: value } },
      },
    },
    withKubernetesNamespace(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { kubernetes_namespace: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { namespace: value } },
      },
    },
    withClusterRoleBinding(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { cluster_role_binding: value } },
      },
    },
    withTtl(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { ttl: value } },
      },
    },
    withLeaseId(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { lease_id: value } },
      },
    },
    withLeaseRenewable(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { backend: value } },
      },
    },
    withServiceAccountName(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { service_account_name: value } },
      },
    },
    withRole(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { role: value } },
      },
    },
    withServiceAccountToken(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { service_account_token: value } },
      },
    },
    withLeaseDuration(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { lease_duration: value } },
      },
    },
  },
}
