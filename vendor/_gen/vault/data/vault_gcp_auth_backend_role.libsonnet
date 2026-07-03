{
  new(terraformName, role_name):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_gcp_auth_backend_role+: {
        [terraformName]+: {
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
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_gcp_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': { help: |||
        The metadata to be tied to generated entity alias.
         This should be a list or map containing the metadata in key value pairs. 
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      bound_instance_groups(suffix=''):: refSelf.plain('.bound_instance_groups%s' % suffix),
      bound_labels(suffix=''):: refSelf.plain('.bound_labels%s' % suffix),
      bound_projects(suffix=''):: refSelf.plain('.bound_projects%s' % suffix),
      bound_regions(suffix=''):: refSelf.plain('.bound_regions%s' % suffix),
      bound_service_accounts(suffix=''):: refSelf.plain('.bound_service_accounts%s' % suffix),
      bound_zones(suffix=''):: refSelf.plain('.bound_zones%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role_id':: { 'function': { help: |||
        The RoleID of the GCP auth role. 
      ||| } },
      role_id(suffix=''):: refSelf.plain('.role_id%s' % suffix),
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
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
