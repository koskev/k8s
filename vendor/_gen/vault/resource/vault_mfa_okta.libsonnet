{
  local outerSelf = self,
  new(terraformName, api_token, mount_accessor, name, org_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_mfa_okta+: {
        [terraformName]+: {
          api_token: api_token,
          mount_accessor: mount_accessor,
          name: name,
          org_name: org_name,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mfa_okta.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_token':: { 'function': { help: |||
        Okta API key.
      ||| } },
      api_token(suffix=''):: refSelf.plain('.api_token%s' % suffix),
      '#base_url':: { 'function': { help: |||
        If set, will be used as the base domain for API requests.
      ||| } },
      base_url(suffix=''):: refSelf.plain('.base_url%s' % suffix),
      '#id':: { 'function': { help: |||
        ID computed by Vault.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount_accessor':: { 'function': { help: |||
        The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping.
      ||| } },
      mount_accessor(suffix=''):: refSelf.plain('.mount_accessor%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the MFA method.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#org_name':: { 'function': { help: |||
        Name of the organization to be used in the Okta API.
      ||| } },
      org_name(suffix=''):: refSelf.plain('.org_name%s' % suffix),
      '#primary_email':: { 'function': { help: |||
        If set to true, the username will only match the primary email for the account.
      ||| } },
      primary_email(suffix=''):: refSelf.plain('.primary_email%s' % suffix),
      '#username_format':: { 'function': { help: |||
        A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`.
      ||| } },
      username_format(suffix=''):: refSelf.plain('.username_format%s' % suffix),
    },
  },
}
