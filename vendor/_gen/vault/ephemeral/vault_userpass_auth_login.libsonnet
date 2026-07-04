{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to log in to Vault using the Userpass auth method.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, password, username):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_userpass_auth_login+: {
        [terraformName]+: {
          mount: mount,
          password: password,
          username: username,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { providers: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      Mount path for the Userpass auth engine in Vault.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { mount: value } },
      },
    },
    '#mount_id':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { namespace: value } },
      },
    },
    '#password':: { 'function': { help: |||
      Password to log in with.
    ||| } },
    withPassword(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { password: value } },
      },
    },
    '#username':: { 'function': { help: |||
      Username to log in with.
    ||| } },
    withUsername(value):: self {
      ephemeral+: {
        vault_userpass_auth_login+: { [terraformName]+: { username: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_userpass_auth_login.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The accessor for the client token.
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#client_token':: { 'function': { help: |||
        The Vault client token issued after a successful login.
      ||| } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        The lease duration of the client token in seconds.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the Userpass auth engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password':: { 'function': { help: |||
        Password to log in with.
      ||| } },
      password(suffix=''):: refSelf.plain('.password%s' % suffix),
      '#policies':: { 'function': { help: |||
        The list of policies attached to the client token.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renewable':: { 'function': { help: |||
        Whether the client token is renewable.
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#username':: { 'function': { help: |||
        Username to log in with.
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
