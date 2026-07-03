{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend+: { [terraformName]+: {
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The mount accessor related to the auth mount. 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAliasMetadata': { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withApiToken': { 'function': { help: |||
      The Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled. 
    ||| } },
    withApiToken(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token: value } },
      },
    },
    '#withApiTokenWo': { 'function': { help: |||
      Write-only Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled. 
    ||| } },
    withApiTokenWo(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token_wo: value } },
      },
    },
    '#withApiTokenWoVersion': { 'function': { help: |||
      Version counter for write-only api_token. 
    ||| } },
    withApiTokenWoVersion(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token_wo_version: value } },
      },
    },
    '#withBaseUrl': { 'function': { help: |||
      The Okta url. Examples: oktapreview.com, okta.com (default) 
    ||| } },
    withBaseUrl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { base_url: value } },
      },
    },
    '#withBypassOktaMfa': { 'function': { help: |||
      When true, requests by Okta for a MFA check will be bypassed. This also disallows certain status checks on the account, such as whether the password is expired. 
    ||| } },
    withBypassOktaMfa(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { bypass_okta_mfa: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      The description of the auth backend 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withGroup(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { group: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrgName': { 'function': { help: |||
      The Okta organization. This will be the first part of the url https://XXX.okta.com. 
    ||| } },
    withOrgName(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { org_name: value } },
      },
    },
    '#withOrganization': { 'function': { help: |||
      The Okta organization. This will be the first part of the url https://XXX.okta.com. Use org_name instead. 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { organization: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      path to mount the backend 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withToken': { 'function': { help: |||
      The Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled. Use api_token instead. 
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token: value } },
      },
    },
    '#withTokenBoundCidrs': { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl': { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl': { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy': { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses': { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod': { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies': { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl': { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType': { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withUser(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { user: value } },
      },
    },
  },
}
