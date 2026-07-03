{
  new(terraformName, backend, kubernetes_namespace, role):: {
    _type:: 'tf',
    data+: {
      vault_kubernetes_service_account_token+: { [terraformName]+: {
        backend: backend,
        kubernetes_namespace: kubernetes_namespace,
        role: role,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The Kubernetes secret backend to generate service account tokens from. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { backend: value } },
      },
    },
    '#withClusterRoleBinding': { 'function': { help: |||
      If true, generate a ClusterRoleBinding to grant permissions across the whole cluster instead of within a namespace. 
    ||| } },
    withClusterRoleBinding(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { cluster_role_binding: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { id: value } },
      },
    },
    '#withKubernetesNamespace': { 'function': { help: |||
      The name of the Kubernetes namespace in which to generate the credentials. 
    ||| } },
    withKubernetesNamespace(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { kubernetes_namespace: value } },
      },
    },
    '#withLeaseDuration': { 'function': { help: |||
      The duration of the lease in seconds. 
    ||| } },
    withLeaseDuration(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseId': { 'function': { help: |||
      The lease identifier assigned by Vault. 
    ||| } },
    withLeaseId(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { lease_id: value } },
      },
    },
    '#withLeaseRenewable': { 'function': { help: |||
      True if the duration of this lease can be extended through renewal. 
    ||| } },
    withLeaseRenewable(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      The name of the role. 
    ||| } },
    withRole(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { role: value } },
      },
    },
    '#withServiceAccountName': { 'function': { help: |||
      The name of the service account associated with the token. 
    ||| } },
    withServiceAccountName(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { service_account_name: value } },
      },
    },
    '#withServiceAccountNamespace': { 'function': { help: |||
      The Kubernetes namespace that the service account resides in. 
    ||| } },
    withServiceAccountNamespace(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { service_account_namespace: value } },
      },
    },
    '#withServiceAccountToken': { 'function': { help: |||
      The Kubernetes service account token. 
    ||| } },
    withServiceAccountToken(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { service_account_token: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      The TTL of the generated Kubernetes service account token, specified in seconds or as a Go duration format string 
    ||| } },
    withTtl(value):: self {
      data+: {
        vault_kubernetes_service_account_token+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
