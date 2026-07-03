{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_oci_auth_backend_role+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOcidList':: { 'function': { help: |||
      A list of Group or Dynamic Group OCIDs that can take this role. 
    ||| } },
    withOcidList(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { ocid_list: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_oci_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
