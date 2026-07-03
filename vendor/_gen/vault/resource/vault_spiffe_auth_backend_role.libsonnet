{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_spiffe_auth_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      A map of string to string that will be set as metadata on the identity alias 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withDisplayName':: { 'function': { help: |||
      A display name for the role. This is only used for display purposes in Vault, if not provided it will default to the role name. 
    ||| } },
    withDisplayName(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { display_name: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the SPIFFE auth engine in Vault. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the SPIFFE auth role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    '#withWorkloadIdPatterns':: { 'function': { help: |||
      A comma separated list of patterns that match an incoming workload id to this role.  A workload id is the part that remains after stripping the trust domain prefix and the slash separator from a spiffe id. 
    ||| } },
    withWorkloadIdPatterns(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { workload_id_patterns: value } },
      },
    },
  },
}
