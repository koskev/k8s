{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to mint a JWT-SVID.
  ||| } },
  local outerSelf = self,
  new(terraformName, audience, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_spiffe_secret_backend_mintjwt+: {
        [terraformName]+: {
          audience: audience,
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAudience':: { 'function': { help: |||
      The audience claim to use
    ||| } },
    withAudience(value):: self {
      ephemeral+: {
        vault_spiffe_secret_backend_mintjwt+: { [terraformName]+: { audience: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the SPIFFE secrets engine in Vault.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_spiffe_secret_backend_mintjwt+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_spiffe_secret_backend_mintjwt+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the SPIFFE role.
    ||| } },
    withName(value):: self {
      ephemeral+: {
        vault_spiffe_secret_backend_mintjwt+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_spiffe_secret_backend_mintjwt+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_spiffe_secret_backend_mintjwt.%s%s }' % [terraformName, suffix],
    fields:: {
      '#audience':: { 'function': { help: |||
        The audience claim to use
      ||| } },
      audience(suffix=''):: refSelf.plain('.audience%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the SPIFFE secrets engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the SPIFFE role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#token':: { 'function': { help: |||
        The minted JWT token.
      ||| } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
    },
  },
}
