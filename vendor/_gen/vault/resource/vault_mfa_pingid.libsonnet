{
  local outerSelf = self,
  new(terraformName, mount_accessor, name, settings_file_base64):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_mfa_pingid+: {
        [terraformName]+: {
          mount_accessor: mount_accessor,
          name: name,
          settings_file_base64: settings_file_base64,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { providers: value } },
      },
    },
    '#id':: { 'function': { help: |||
      ID computed by Vault.
    ||| } },
    withId(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { id: value } },
      },
    },
    '#mount_accessor':: { 'function': { help: |||
      The mount to tie this method to for use in automatic mappings. The mapping will use the Name field of Aliases associated with this mount as the username in the mapping.
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Name of the MFA method.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { namespace: value } },
      },
    },
    '#settings_file_base64':: { 'function': { help: |||
      A base64-encoded third-party settings file retrieved from PingID's configuration page.
    ||| } },
    withSettingsFileBase64(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { settings_file_base64: value } },
      },
    },
    '#username_format':: { 'function': { help: |||
      A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`.
    ||| } },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { username_format: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mfa_pingid.%s%s }' % [terraformName, suffix],
    fields:: {
      '#admin_url':: { 'function': { help: |||
        Admin URL computed by Vault.
      ||| } },
      admin_url(suffix=''):: refSelf.plain('.admin_url%s' % suffix),
      '#authenticator_url':: { 'function': { help: |||
        Authenticator URL computed by Vault.
      ||| } },
      authenticator_url(suffix=''):: refSelf.plain('.authenticator_url%s' % suffix),
      '#id':: { 'function': { help: |||
        ID computed by Vault.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#idp_url':: { 'function': { help: |||
        IDP URL computed by Vault.
      ||| } },
      idp_url(suffix=''):: refSelf.plain('.idp_url%s' % suffix),
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
      '#namespace_id':: { 'function': { help: |||
        Namespace ID computed by Vault.
      ||| } },
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      '#org_alias':: { 'function': { help: |||
        Org Alias computed by Vault.
      ||| } },
      org_alias(suffix=''):: refSelf.plain('.org_alias%s' % suffix),
      '#settings_file_base64':: { 'function': { help: |||
        A base64-encoded third-party settings file retrieved from PingID's configuration page.
      ||| } },
      settings_file_base64(suffix=''):: refSelf.plain('.settings_file_base64%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of configuration computed by Vault.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#use_signature':: { 'function': { help: |||
        If set, enables use of PingID signature. Computed by Vault
      ||| } },
      use_signature(suffix=''):: refSelf.plain('.use_signature%s' % suffix),
      '#username_format':: { 'function': { help: |||
        A format string for mapping Identity names to MFA method names. Values to substitute should be placed in `{{}}`.
      ||| } },
      username_format(suffix=''):: refSelf.plain('.username_format%s' % suffix),
    },
  },
}
