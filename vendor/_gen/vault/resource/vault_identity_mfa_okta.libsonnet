{
  new(terraformName, api_token, org_name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_okta+: { [terraformName]+: {
        api_token: api_token,
        org_name: org_name,
      } },
    },
    '#withApiToken': { 'function': { help: |||
      Okta API token. 
    ||| } },
    withApiToken(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { api_token: value } },
      },
    },
    '#withBaseUrl': { 'function': { help: |||
      The base domain to use for API requests. 
    ||| } },
    withBaseUrl(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { base_url: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { id: value } },
      },
    },
    '#withMethodId': { 'function': { help: |||
      Method ID. 
    ||| } },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { method_id: value } },
      },
    },
    '#withMountAccessor': { 'function': { help: |||
      Mount accessor. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Method name. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId': { 'function': { help: |||
      Method's namespace ID. 
    ||| } },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withNamespacePath': { 'function': { help: |||
      Method's namespace path. 
    ||| } },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace_path: value } },
      },
    },
    '#withOrgName': { 'function': { help: |||
      Name of the organization to be used in the Okta API. 
    ||| } },
    withOrgName(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { org_name: value } },
      },
    },
    '#withPrimaryEmail': { 'function': { help: |||
      Only match the primary email for the account. 
    ||| } },
    withPrimaryEmail(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { primary_email: value } },
      },
    },
    '#withType': { 'function': { help: |||
      MFA type. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { type: value } },
      },
    },
    '#withUsernameFormat': { 'function': { help: |||
      A template string for mapping Identity names to MFA methods. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { username_format: value } },
      },
    },
    '#withUuid': { 'function': { help: |||
      Resource UUID. 
    ||| } },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { uuid: value } },
      },
    },
  },
}
