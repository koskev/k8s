{
  local outerSelf = self,
  new(terraformName, backend, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_kubernetes_secret_backend_role+: {
        [terraformName]+: {
          backend: backend,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { providers: value } },
      },
    },
    '#allowed_kubernetes_namespace_selector':: { 'function': { help: |||
      A label selector for Kubernetes namespaces in which credentials can begenerated. Accepts either a JSON or YAML object. The value should be of typeLabelSelector. If set with `allowed_kubernetes_namespace`, the conditions are `OR`ed.
    ||| } },
    withAllowedKubernetesNamespaceSelector(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { allowed_kubernetes_namespace_selector: value } },
      },
    },
    '#allowed_kubernetes_namespaces':: { 'function': { help: |||
      The list of Kubernetes namespaces this role can generate credentials for. If set to '*' all namespaces are allowed. If set with`allowed_kubernetes_namespace_selector`, the conditions are `OR`ed.
    ||| } },
    withAllowedKubernetesNamespaces(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { allowed_kubernetes_namespaces: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The mount path for the Kubernetes secrets engine.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#extra_annotations':: { 'function': { help: |||
      Additional annotations to apply to all generated Kubernetes objects.
    ||| } },
    withExtraAnnotations(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { extra_annotations: value } },
      },
    },
    '#extra_labels':: { 'function': { help: |||
      Additional labels to apply to all generated Kubernetes objects.
    ||| } },
    withExtraLabels(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { extra_labels: value } },
      },
    },
    '#generated_role_rules':: { 'function': { help: |||
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
    '#kubernetes_role_name':: { 'function': { help: |||
      The pre-existing Role or ClusterRole to bind a generated service account to. Mutually exclusive with 'service_account_name' and 'generated_role_rules'. If set, Kubernetes token, service account, and role binding objects will be created when credentials are requested.
    ||| } },
    withKubernetesRoleName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { kubernetes_role_name: value } },
      },
    },
    '#kubernetes_role_type':: { 'function': { help: |||
      Specifies whether the Kubernetes role is a Role or ClusterRole.
    ||| } },
    withKubernetesRoleType(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { kubernetes_role_type: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The name of the role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#name_template':: { 'function': { help: |||
      The name template to use when generating service accounts, roles and role bindings. If unset, a default template is used.
    ||| } },
    withNameTemplate(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { name_template: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#service_account_name':: { 'function': { help: |||
      The pre-existing service account to generate tokens for. Mutually exclusive with 'kubernetes_role_name' and 'generated_role_rules'. If set, only a Kubernetes token will be created when credentials are requested.
    ||| } },
    withServiceAccountName(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { service_account_name: value } },
      },
    },
    '#token_default_audiences':: { 'function': { help: |||
      The default audiences for generated Kubernetes tokens. If not set, defaults to the Kubernetes cluster's default audiences. Requires Vault 1.15+.
    ||| } },
    withTokenDefaultAudiences(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_default_audiences: value } },
      },
    },
    '#token_default_ttl':: { 'function': { help: |||
      The default TTL for generated Kubernetes tokens in seconds.
    ||| } },
    withTokenDefaultTtl(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_default_ttl: value } },
      },
    },
    '#token_max_ttl':: { 'function': { help: |||
      The maximum TTL for generated Kubernetes tokens in seconds.
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_secret_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kubernetes_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_kubernetes_namespace_selector':: { 'function': { help: |||
        A label selector for Kubernetes namespaces in which credentials can begenerated. Accepts either a JSON or YAML object. The value should be of typeLabelSelector. If set with `allowed_kubernetes_namespace`, the conditions are `OR`ed.
      ||| } },
      allowed_kubernetes_namespace_selector(suffix=''):: refSelf.plain('.allowed_kubernetes_namespace_selector%s' % suffix),
      '#allowed_kubernetes_namespaces':: { 'function': { help: |||
        The list of Kubernetes namespaces this role can generate credentials for. If set to '*' all namespaces are allowed. If set with`allowed_kubernetes_namespace_selector`, the conditions are `OR`ed.
      ||| } },
      allowed_kubernetes_namespaces(suffix=''):: refSelf.plain('.allowed_kubernetes_namespaces%s' % suffix),
      '#backend':: { 'function': { help: |||
        The mount path for the Kubernetes secrets engine.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#extra_annotations':: { 'function': { help: |||
        Additional annotations to apply to all generated Kubernetes objects.
      ||| } },
      extra_annotations(suffix=''):: refSelf.plain('.extra_annotations%s' % suffix),
      '#extra_labels':: { 'function': { help: |||
        Additional labels to apply to all generated Kubernetes objects.
      ||| } },
      extra_labels(suffix=''):: refSelf.plain('.extra_labels%s' % suffix),
      '#generated_role_rules':: { 'function': { help: |||
        The Role or ClusterRole rules to use when generating a role. Accepts either JSON or YAML formatted rules. Mutually exclusive with 'service_account_name' and 'kubernetes_role_name'. If set, the entire chain of Kubernetes objects will be generated when credentials are requested.
      ||| } },
      generated_role_rules(suffix=''):: refSelf.plain('.generated_role_rules%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#kubernetes_role_name':: { 'function': { help: |||
        The pre-existing Role or ClusterRole to bind a generated service account to. Mutually exclusive with 'service_account_name' and 'generated_role_rules'. If set, Kubernetes token, service account, and role binding objects will be created when credentials are requested.
      ||| } },
      kubernetes_role_name(suffix=''):: refSelf.plain('.kubernetes_role_name%s' % suffix),
      '#kubernetes_role_type':: { 'function': { help: |||
        Specifies whether the Kubernetes role is a Role or ClusterRole.
      ||| } },
      kubernetes_role_type(suffix=''):: refSelf.plain('.kubernetes_role_type%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#name_template':: { 'function': { help: |||
        The name template to use when generating service accounts, roles and role bindings. If unset, a default template is used.
      ||| } },
      name_template(suffix=''):: refSelf.plain('.name_template%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#service_account_name':: { 'function': { help: |||
        The pre-existing service account to generate tokens for. Mutually exclusive with 'kubernetes_role_name' and 'generated_role_rules'. If set, only a Kubernetes token will be created when credentials are requested.
      ||| } },
      service_account_name(suffix=''):: refSelf.plain('.service_account_name%s' % suffix),
      '#token_default_audiences':: { 'function': { help: |||
        The default audiences for generated Kubernetes tokens. If not set, defaults to the Kubernetes cluster's default audiences. Requires Vault 1.15+.
      ||| } },
      token_default_audiences(suffix=''):: refSelf.plain('.token_default_audiences%s' % suffix),
      '#token_default_ttl':: { 'function': { help: |||
        The default TTL for generated Kubernetes tokens in seconds.
      ||| } },
      token_default_ttl(suffix=''):: refSelf.plain('.token_default_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': { help: |||
        The maximum TTL for generated Kubernetes tokens in seconds.
      ||| } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
    },
  },
}
