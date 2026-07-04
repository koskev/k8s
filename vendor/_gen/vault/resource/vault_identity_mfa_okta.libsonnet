{
  local outerSelf = self,
  new(terraformName, api_token, org_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_okta+: {
        [terraformName]+: {
          api_token: api_token,
          org_name: org_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withApiToken':: { 'function': { help: |||
      Okta API token.
    ||| } },
    withApiToken(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { api_token: value } },
      },
    },
    '#withBaseUrl':: { 'function': { help: |||
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
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrgName':: { 'function': { help: |||
      Name of the organization to be used in the Okta API.
    ||| } },
    withOrgName(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { org_name: value } },
      },
    },
    '#withPrimaryEmail':: { 'function': { help: |||
      Only match the primary email for the account.
    ||| } },
    withPrimaryEmail(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { primary_email: value } },
      },
    },
    '#withUsernameFormat':: { 'function': { help: |||
      A template string for mapping Identity names to MFA methods.
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { username_format: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_mfa_okta.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_token':: { 'function': { help: |||
        Okta API token.
      ||| } },
      api_token(suffix=''):: refSelf.plain('.api_token%s' % suffix),
      '#base_url':: { 'function': { help: |||
        The base domain to use for API requests.
      ||| } },
      base_url(suffix=''):: refSelf.plain('.base_url%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#method_id':: { 'function': { help: |||
        Method ID.
      ||| } },
      method_id(suffix=''):: refSelf.plain('.method_id%s' % suffix),
      '#mount_accessor':: { 'function': { help: |||
        Mount accessor.
      ||| } },
      mount_accessor(suffix=''):: refSelf.plain('.mount_accessor%s' % suffix),
      '#name':: { 'function': { help: |||
        Method name.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#namespace_id':: { 'function': { help: |||
        Method's namespace ID.
      ||| } },
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      '#namespace_path':: { 'function': { help: |||
        Method's namespace path.
      ||| } },
      namespace_path(suffix=''):: refSelf.plain('.namespace_path%s' % suffix),
      '#org_name':: { 'function': { help: |||
        Name of the organization to be used in the Okta API.
      ||| } },
      org_name(suffix=''):: refSelf.plain('.org_name%s' % suffix),
      '#primary_email':: { 'function': { help: |||
        Only match the primary email for the account.
      ||| } },
      primary_email(suffix=''):: refSelf.plain('.primary_email%s' % suffix),
      '#type':: { 'function': { help: |||
        MFA type.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#username_format':: { 'function': { help: |||
        A template string for mapping Identity names to MFA methods.
      ||| } },
      username_format(suffix=''):: refSelf.plain('.username_format%s' % suffix),
      '#uuid':: { 'function': { help: |||
        Resource UUID.
      ||| } },
      uuid(suffix=''):: refSelf.plain('.uuid%s' % suffix),
    },
  },
}
