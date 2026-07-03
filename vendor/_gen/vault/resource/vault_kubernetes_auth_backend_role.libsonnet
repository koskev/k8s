{
  new(terraformName, bound_service_account_names, role_name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_auth_backend_role+: {
        [terraformName]+: {
          bound_service_account_names: bound_service_account_names,
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAliasNameSource':: { 'function': { help: |||
      Configures how identity aliases are generated. Valid choices are: serviceaccount_uid, serviceaccount_name 
    ||| } },
    withAliasNameSource(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_name_source: value } },
      },
    },
    '#withAudience':: { 'function': { help: |||
      Optional Audience claim to verify in the JWT. 
    ||| } },
    withAudience(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { audience: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the kubernetes backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBoundServiceAccountNames':: { 'function': { help: |||
      List of service account names able to access this role. If set to `["*"]` all names are allowed, both this and bound_service_account_namespaces can not be "*". 
    ||| } },
    withBoundServiceAccountNames(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_names: value } },
      },
    },
    '#withBoundServiceAccountNamespaceSelector':: { 'function': { help: |||
      A label selector for Kubernetes namespaces allowed to access this role. Accepts either a JSON or YAML object. The value should be of type LabelSelector. Currently, label selectors with matchExpressions are not supported. To use label selectors, Vault must have permission to read namespaces on the Kubernetes cluster. If set with bound_service_account_namespaces, the conditions are ORed. 
    ||| } },
    withBoundServiceAccountNamespaceSelector(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespace_selector: value } },
      },
    },
    '#withBoundServiceAccountNamespaces':: { 'function': { help: |||
      List of namespaces allowed to access this role. If set to `["*"]` all namespaces are allowed, both this and bound_service_account_names can not be set to "*". 
    ||| } },
    withBoundServiceAccountNamespaces(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespaces: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kubernetes_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': { help: |||
        The metadata to be tied to generated entity alias.
         This should be a list or map containing the metadata in key value pairs. 
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#alias_name_source':: { 'function': { help: |||
        Configures how identity aliases are generated. Valid choices are: serviceaccount_uid, serviceaccount_name 
      ||| } },
      alias_name_source(suffix=''):: refSelf.plain('.alias_name_source%s' % suffix),
      '#audience':: { 'function': { help: |||
        Optional Audience claim to verify in the JWT. 
      ||| } },
      audience(suffix=''):: refSelf.plain('.audience%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the kubernetes backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#bound_service_account_names':: { 'function': { help: |||
        List of service account names able to access this role. If set to `["*"]` all names are allowed, both this and bound_service_account_namespaces can not be "*". 
      ||| } },
      bound_service_account_names(suffix=''):: refSelf.plain('.bound_service_account_names%s' % suffix),
      '#bound_service_account_namespace_selector':: { 'function': { help: |||
        A label selector for Kubernetes namespaces allowed to access this role. Accepts either a JSON or YAML object. The value should be of type LabelSelector. Currently, label selectors with matchExpressions are not supported. To use label selectors, Vault must have permission to read namespaces on the Kubernetes cluster. If set with bound_service_account_namespaces, the conditions are ORed. 
      ||| } },
      bound_service_account_namespace_selector(suffix=''):: refSelf.plain('.bound_service_account_namespace_selector%s' % suffix),
      '#bound_service_account_namespaces':: { 'function': { help: |||
        List of namespaces allowed to access this role. If set to `["*"]` all namespaces are allowed, both this and bound_service_account_names can not be set to "*". 
      ||| } },
      bound_service_account_namespaces(suffix=''):: refSelf.plain('.bound_service_account_namespaces%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role. 
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#token_bound_cidrs':: { 'function': { help: |||
        Specifies the blocks of IP addresses which are allowed to use the generated token 
      ||| } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#token_explicit_max_ttl':: { 'function': { help: |||
        Generated Token's Explicit Maximum TTL in seconds 
      ||| } },
      token_explicit_max_ttl(suffix=''):: refSelf.plain('.token_explicit_max_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': { help: |||
        The maximum lifetime of the generated token 
      ||| } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
      '#token_no_default_policy':: { 'function': { help: |||
        If true, the 'default' policy will not automatically be added to generated tokens 
      ||| } },
      token_no_default_policy(suffix=''):: refSelf.plain('.token_no_default_policy%s' % suffix),
      '#token_num_uses':: { 'function': { help: |||
        The maximum number of times a token may be used, a value of zero means unlimited 
      ||| } },
      token_num_uses(suffix=''):: refSelf.plain('.token_num_uses%s' % suffix),
      '#token_period':: { 'function': { help: |||
        Generated Token's Period 
      ||| } },
      token_period(suffix=''):: refSelf.plain('.token_period%s' % suffix),
      '#token_policies':: { 'function': { help: |||
        Generated Token's Policies 
      ||| } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#token_ttl':: { 'function': { help: |||
        The initial ttl of the token to generate in seconds 
      ||| } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
      '#token_type':: { 'function': { help: |||
        The type of token to generate, service or batch 
      ||| } },
      token_type(suffix=''):: refSelf.plain('.token_type%s' % suffix),
    },
  },
}
