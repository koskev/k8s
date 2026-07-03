{
  new(terraformName, organization):: {
    _type:: 'tf',
    resource+: {
      vault_github_auth_backend+: { [terraformName]+: {
        organization: organization,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The mount accessor related to the auth mount. 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAliasMetadata': { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBaseUrl': { 'function': { help: |||
      The API endpoint to use. Useful if you are running GitHub Enterprise or an API-compatible authentication server. 
    ||| } },
    withBaseUrl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { base_url: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Specifies the description of the mount. This overrides the current stored value, if any. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrganization': { 'function': { help: |||
      The organization users must be part of. 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { organization: value } },
      },
    },
    '#withOrganizationId': { 'function': { help: |||
      The ID of the organization users must be part of. Vault will attempt to fetch and set this value if it is not provided (vault-1.10+) 
    ||| } },
    withOrganizationId(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { organization_id: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path where the auth backend is mounted 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withTokenBoundCidrs': { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl': { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl': { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy': { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses': { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod': { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies': { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl': { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType': { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
  },
}
