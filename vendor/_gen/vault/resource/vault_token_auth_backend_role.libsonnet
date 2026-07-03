{
  new(terraformName, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_token_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAllowedEntityAliases':: { 'function': { help: |||
      Set of allowed entity aliases for this role. 
    ||| } },
    withAllowedEntityAliases(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_entity_aliases: value } },
      },
    },
    '#withAllowedPolicies':: { 'function': { help: |||
      List of allowed policies for given role. 
    ||| } },
    withAllowedPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_policies: value } },
      },
    },
    '#withAllowedPoliciesGlob':: { 'function': { help: |||
      Set of allowed policies with glob match for given role. 
    ||| } },
    withAllowedPoliciesGlob(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_policies_glob: value } },
      },
    },
    '#withDisallowedPolicies':: { 'function': { help: |||
      List of disallowed policies for given role. 
    ||| } },
    withDisallowedPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { disallowed_policies: value } },
      },
    },
    '#withDisallowedPoliciesGlob':: { 'function': { help: |||
      Set of disallowed policies with glob match for given role. 
    ||| } },
    withDisallowedPoliciesGlob(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { disallowed_policies_glob: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrphan':: { 'function': { help: |||
      If true, tokens created against this policy will be orphan tokens. 
    ||| } },
    withOrphan(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { orphan: value } },
      },
    },
    '#withPathSuffix':: { 'function': { help: |||
      Tokens created against this role will have the given suffix as part of their path in addition to the role name. 
    ||| } },
    withPathSuffix(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { path_suffix: value } },
      },
    },
    '#withRenewable':: { 'function': { help: |||
      Whether to disable the ability of the token to be renewed past its initial TTL. 
    ||| } },
    withRenewable(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { renewable: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
