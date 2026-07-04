{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to login with RADIUS authentication and obtain a Vault token.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, password, username):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_radius_auth_login+: {
        [terraformName]+: {
          mount: mount,
          password: password,
          username: username,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMount':: { 'function': { help: |||
      Unique name of the auth backend to login to.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_radius_auth_login+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_radius_auth_login+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_radius_auth_login+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPassword':: { 'function': { help: |||
      RADIUS password for the user.
    ||| } },
    withPassword(value):: self {
      ephemeral+: {
        vault_radius_auth_login+: { [terraformName]+: { password: value } },
      },
    },
    '#withUsername':: { 'function': { help: |||
      RADIUS username to authenticate.
    ||| } },
    withUsername(value):: self {
      ephemeral+: {
        vault_radius_auth_login+: { [terraformName]+: { username: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_radius_auth_login.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The accessor for the token.
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#client_token':: { 'function': { help: |||
        The Vault token generated from successful login.
      ||| } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      '#data':: { 'function': { help: |||
        Additional data from the response.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#entity_id':: { 'function': { help: |||
        The entity ID of the authenticated user.
      ||| } },
      entity_id(suffix=''):: refSelf.plain('.entity_id%s' % suffix),
      '#identity_policies':: { 'function': { help: |||
        List of identity policies attached to the token.
      ||| } },
      identity_policies(suffix=''):: refSelf.plain('.identity_policies%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        The lease duration in seconds.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        The lease ID for the token.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata associated with the authentication.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mfa_requirement':: { 'function': { help: |||
        MFA requirement information.
      ||| } },
      mfa_requirement(suffix=''):: refSelf.plain('.mfa_requirement%s' % suffix),
      '#mount':: { 'function': { help: |||
        Unique name of the auth backend to login to.
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
      '#orphan':: { 'function': { help: |||
        Whether the token is an orphan.
      ||| } },
      orphan(suffix=''):: refSelf.plain('.orphan%s' % suffix),
      '#password':: { 'function': { help: |||
        RADIUS password for the user.
      ||| } },
      password(suffix=''):: refSelf.plain('.password%s' % suffix),
      '#policies':: { 'function': { help: |||
        List of all policies (token + identity) attached to the token.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renewable':: { 'function': { help: |||
        Whether the token is renewable.
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#token_policies':: { 'function': { help: |||
        List of token policies attached to the token.
      ||| } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#username':: { 'function': { help: |||
        RADIUS username to authenticate.
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
      '#warnings':: { 'function': { help: |||
        List of warnings returned from Vault.
      ||| } },
      warnings(suffix=''):: refSelf.plain('.warnings%s' % suffix),
    },
  },
}
