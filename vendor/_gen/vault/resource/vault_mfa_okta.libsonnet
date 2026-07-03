{
  new(terraformName, api_token, mount_accessor, name, org_name):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_okta+: { [terraformName]+: {
        api_token: api_token,
        mount_accessor: mount_accessor,
        name: name,
        org_name: org_name,
      } },
    },
    '#withApiToken':: { 'function': { help: |||
      Okta API key. 
    ||| } },
    withApiToken(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { api_token: value } },
      },
    },
    '#withBaseUrl':: { 'function': { help: |||
      If set, will be used as the base domain for API requests. 
    ||| } },
    withBaseUrl(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { base_url: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      ID computed by Vault. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { id: value } },
      },
    },
    '#withMountAccessor':: { 'function': { help: |||
      The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the MFA method. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrgName':: { 'function': { help: |||
      Name of the organization to be used in the Okta API. 
    ||| } },
    withOrgName(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { org_name: value } },
      },
    },
    '#withPrimaryEmail':: { 'function': { help: |||
      If set to true, the username will only match the primary email for the account. 
    ||| } },
    withPrimaryEmail(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { primary_email: value } },
      },
    },
    '#withUsernameFormat':: { 'function': { help: |||
      A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { username_format: value } },
      },
    },
  },
}
