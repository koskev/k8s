{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    '#withAllowedKubernetesNamespaceSelector':: { 'function': { help: |||
      A label selector for Kubernetes namespaces in which credentials can begenerated. Accepts either a JSON or YAML object. The value should be of typeLabelSelector. If set with `allowed_kubernetes_namespace`, the conditions are `OR`ed. 
    ||| } },
    withAllowedKubernetesNamespaceSelector(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { allowed_kubernetes_namespace_selector: value } },
      },
    },
    '#withAllowedKubernetesNamespaces':: { 'function': { help: |||
      The list of Kubernetes namespaces this role can generate credentials for. If set to '*' all namespaces are allowed. If set with`allowed_kubernetes_namespace_selector`, the conditions are `OR`ed. 
    ||| } },
    withAllowedKubernetesNamespaces(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { allowed_kubernetes_namespaces: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The mount path for the Kubernetes secrets engine. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withExtraAnnotations':: { 'function': { help: |||
      Additional annotations to apply to all generated Kubernetes objects. 
    ||| } },
    withExtraAnnotations(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { extra_annotations: value } },
      },
    },
    '#withExtraLabels':: { 'function': { help: |||
      Additional labels to apply to all generated Kubernetes objects. 
    ||| } },
    withExtraLabels(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { extra_labels: value } },
      },
    },
    '#withGeneratedRoleRules':: { 'function': { help: |||
      The Role or ClusterRole rules to use when generating a role. Accepts either JSON or YAML formatted rules. Mutually exclusive with 'service_account_name' and 'kubernetes_role_name'. If set, the entire chain of Kubernetes objects will be generated when credentials are requested. 
    ||| } },
    withGeneratedRoleRules(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { generated_role_rules: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withKubernetesRoleName':: { 'function': { help: |||
      The pre-existing Role or ClusterRole to bind a generated service account to. Mutually exclusive with 'service_account_name' and 'generated_role_rules'. If set, Kubernetes token, service account, and role binding objects will be created when credentials are requested. 
    ||| } },
    withKubernetesRoleName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { kubernetes_role_name: value } },
      },
    },
    '#withKubernetesRoleType':: { 'function': { help: |||
      Specifies whether the Kubernetes role is a Role or ClusterRole. 
    ||| } },
    withKubernetesRoleType(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { kubernetes_role_type: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNameTemplate':: { 'function': { help: |||
      The name template to use when generating service accounts, roles and role bindings. If unset, a default template is used. 
    ||| } },
    withNameTemplate(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { name_template: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withServiceAccountName':: { 'function': { help: |||
      The pre-existing service account to generate tokens for. Mutually exclusive with 'kubernetes_role_name' and 'generated_role_rules'. If set, only a Kubernetes token will be created when credentials are requested. 
    ||| } },
    withServiceAccountName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { service_account_name: value } },
      },
    },
    '#withTokenDefaultAudiences':: { 'function': { help: |||
      The default audiences for generated Kubernetes tokens. If not set, defaults to the Kubernetes cluster's default audiences. Requires Vault 1.15+. 
    ||| } },
    withTokenDefaultAudiences(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_default_audiences: value } },
      },
    },
    '#withTokenDefaultTtl':: { 'function': { help: |||
      The default TTL for generated Kubernetes tokens in seconds. 
    ||| } },
    withTokenDefaultTtl(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_default_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum TTL for generated Kubernetes tokens in seconds. 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
  },
}
