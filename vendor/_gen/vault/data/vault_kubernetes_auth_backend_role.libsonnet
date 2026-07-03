{
  new(terraformName, role_name):: {
    _type:: 'tf',
    data+: {
      vault_kubernetes_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAliasNameSource':: { 'function': { help: |||
      Method used for generating identity aliases. 
    ||| } },
    withAliasNameSource(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { alias_name_source: value } },
      },
    },
    '#withAudience':: { 'function': { help: |||
      Optional Audience claim to verify in the JWT. 
    ||| } },
    withAudience(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { audience: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the kubernetes backend to configure. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBoundServiceAccountNames':: { 'function': { help: |||
      List of service account names able to access this role. If set to "*" all names are allowed, both this and bound_service_account_namespaces can not be "*". 
    ||| } },
    withBoundServiceAccountNames(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_names: value } },
      },
    },
    '#withBoundServiceAccountNamespaceSelector':: { 'function': { help: |||
      A label selector for Kubernetes namespaces allowed to access this role. Accepts either a JSON or YAML object. The value should be of type LabelSelector. Currently, label selectors with matchExpressions are not supported. To use label selectors, Vault must have permission to read namespaces on the Kubernetes cluster. If set with bound_service_account_namespaces, the conditions are ORed. 
    ||| } },
    withBoundServiceAccountNamespaceSelector(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespace_selector: value } },
      },
    },
    '#withBoundServiceAccountNamespaces':: { 'function': { help: |||
      List of namespaces allowed to access this role. If set to "*" all namespaces are allowed, both this and bound_service_account_names can not be set to "*". 
    ||| } },
    withBoundServiceAccountNamespaces(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { bound_service_account_namespaces: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      data+: {
        vault_kubernetes_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
