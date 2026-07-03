{
  new(terraformName, api_hostname, integration_key, secret_key):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_duo+: {
        [terraformName]+: {
          api_hostname: api_hostname,
          integration_key: integration_key,
          secret_key: secret_key,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withApiHostname':: { 'function': { help: |||
      API hostname for Duo 
    ||| } },
    withApiHostname(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { api_hostname: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { id: value } },
      },
    },
    '#withIntegrationKey':: { 'function': { help: |||
      Integration key for Duo 
    ||| } },
    withIntegrationKey(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { integration_key: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPushInfo':: { 'function': { help: |||
      Push information for Duo. 
    ||| } },
    withPushInfo(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { push_info: value } },
      },
    },
    '#withSecretKey':: { 'function': { help: |||
      Secret key for Duo 
    ||| } },
    withSecretKey(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withUsePasscode':: { 'function': { help: |||
      Require passcode upon MFA validation. 
    ||| } },
    withUsePasscode(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { use_passcode: value } },
      },
    },
    '#withUsernameFormat':: { 'function': { help: |||
      A template string for mapping Identity names to MFA methods. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_duo+: { [terraformName]+: { username_format: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_mfa_duo.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_hostname':: { 'function': { help: |||
        API hostname for Duo 
      ||| } },
      api_hostname(suffix=''):: refSelf.plain('.api_hostname%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#integration_key':: { 'function': { help: |||
        Integration key for Duo 
      ||| } },
      integration_key(suffix=''):: refSelf.plain('.integration_key%s' % suffix),
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
      '#push_info':: { 'function': { help: |||
        Push information for Duo. 
      ||| } },
      push_info(suffix=''):: refSelf.plain('.push_info%s' % suffix),
      '#secret_key':: { 'function': { help: |||
        Secret key for Duo 
      ||| } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
      '#type':: { 'function': { help: |||
        MFA type. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#use_passcode':: { 'function': { help: |||
        Require passcode upon MFA validation. 
      ||| } },
      use_passcode(suffix=''):: refSelf.plain('.use_passcode%s' % suffix),
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
