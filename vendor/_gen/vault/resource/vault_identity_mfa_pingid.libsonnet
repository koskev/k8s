{
  new(terraformName, settings_file_base64):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_pingid+: {
        [terraformName]+: {
          settings_file_base64: settings_file_base64,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSettingsFileBase64':: { 'function': { help: |||
      A base64-encoded third-party settings contents as retrieved from PingID's configuration page. 
    ||| } },
    withSettingsFileBase64(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { settings_file_base64: value } },
      },
    },
    '#withUsernameFormat':: { 'function': { help: |||
      A template string for mapping Identity names to MFA methods. 
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { username_format: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_mfa_pingid.%s%s }' % [terraformName, suffix],
    fields:: {
      '#admin_url':: { 'function': { help: |||
        The admin URL, derived from "settings_file_base64" 
      ||| } },
      admin_url(suffix=''):: refSelf.plain('.admin_url%s' % suffix),
      '#authenticator_url':: { 'function': { help: |||
        A unique identifier of the organization, derived from "settings_file_base64" 
      ||| } },
      authenticator_url(suffix=''):: refSelf.plain('.authenticator_url%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#idp_url':: { 'function': { help: |||
        The IDP URL, derived from "settings_file_base64" 
      ||| } },
      idp_url(suffix=''):: refSelf.plain('.idp_url%s' % suffix),
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
      '#org_alias':: { 'function': { help: |||
        The name of the PingID client organization, derived from "settings_file_base64" 
      ||| } },
      org_alias(suffix=''):: refSelf.plain('.org_alias%s' % suffix),
      '#settings_file_base64':: { 'function': { help: |||
        A base64-encoded third-party settings contents as retrieved from PingID's configuration page. 
      ||| } },
      settings_file_base64(suffix=''):: refSelf.plain('.settings_file_base64%s' % suffix),
      '#type':: { 'function': { help: |||
        MFA type. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#use_signature':: { 'function': { help: |||
        Use signature value, derived from "settings_file_base64" 
      ||| } },
      use_signature(suffix=''):: refSelf.plain('.use_signature%s' % suffix),
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
