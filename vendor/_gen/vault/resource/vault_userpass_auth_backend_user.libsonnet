{
  new(terraformName, mount, username):: {
    _type:: 'tf',
    resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: {
        mount: mount,
        username: username,
      } },
    },
    '#withAliasMetadata': { 'function': { help: |||
      A map of string to string that will be set as metadata on the identity alias 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Mount path for the Userpass auth engine in Vault. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordHashWo': { 'function': { help: |||
      Pre-hashed password for this user in bcrypt format. Available in Vault 1.17 and later. Mutually exclusive with password_wo. 
    ||| } },
    withPasswordHashWo(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { password_hash_wo: value } },
      },
    },
    '#withPasswordHashWoVersion': { 'function': { help: |||
      Version counter for the write-only `password_hash_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the password hash changes. Increment this value whenever you update `password_hash_wo` to ensure the new password hash is sent to Vault. 
    ||| } },
    withPasswordHashWoVersion(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { password_hash_wo_version: value } },
      },
    },
    '#withPasswordWo': { 'function': { help: |||
      Password for this user. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withPasswordWo(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { password_wo: value } },
      },
    },
    '#withPasswordWoVersion': { 'function': { help: |||
      Version counter for the write-only `password_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the password changes. Increment this value whenever you update `password_wo` to ensure the new password is sent to Vault. 
    ||| } },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    '#withTokenBoundCidrs': { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl': { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl': { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy': { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses': { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod': { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies': { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl': { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType': { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { token_type: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      Username for this Userpass user. 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_userpass_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
  },
}
