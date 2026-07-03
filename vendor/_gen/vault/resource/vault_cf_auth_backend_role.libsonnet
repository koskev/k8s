{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_cf_auth_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      A map of string to string that will be set as metadata on the identity alias 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBoundApplicationIds':: { 'function': { help: |||
      An optional set of application IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list. 
    ||| } },
    withBoundApplicationIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_application_ids: value } },
      },
    },
    '#withBoundInstanceIds':: { 'function': { help: |||
      An optional set of instance IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list. 
    ||| } },
    withBoundInstanceIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_instance_ids: value } },
      },
    },
    '#withBoundOrganizationIds':: { 'function': { help: |||
      An optional set of organization IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list. 
    ||| } },
    withBoundOrganizationIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_organization_ids: value } },
      },
    },
    '#withBoundSpaceIds':: { 'function': { help: |||
      An optional set of space IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list. 
    ||| } },
    withBoundSpaceIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_space_ids: value } },
      },
    },
    '#withDisableIpMatching':: { 'function': { help: |||
      If set to `true`, disables the default behavior that logging in must be performed from an acceptable IP address described by the presented certificate. Defaults to `false`. To reset to the default, omit this field from config rather than setting it to `false`. 
    ||| } },
    withDisableIpMatching(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { disable_ip_matching: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the CF auth engine in Vault. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the CF auth role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
