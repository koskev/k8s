{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withExtraAnnotations(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { extra_annotations: value } },
      },
    },
    withExtraLabels(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { extra_labels: value } },
      },
    },
    withAllowedKubernetesNamespaces(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { allowed_kubernetes_namespaces: value } },
      },
    },
    withKubernetesRoleType(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { kubernetes_role_type: value } },
      },
    },
    withTokenDefaultAudiences(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_default_audiences: value } },
      },
    },
    withTokenDefaultTtl(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_default_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withKubernetesRoleName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { kubernetes_role_name: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withGeneratedRoleRules(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { generated_role_rules: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withAllowedKubernetesNamespaceSelector(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { allowed_kubernetes_namespace_selector: value } },
      },
    },
    withNameTemplate(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { name_template: value } },
      },
    },
    withServiceAccountName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { service_account_name: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
  },
}
