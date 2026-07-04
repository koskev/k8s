{
  '#new':: { 'function': { help: |||
    Manages Vault PKI ACME EAB bindings
  ||| } },
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_acme_eab+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuer':: { 'function': { help: |||
      Specifies the issuer reference to use for directory path
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Specifies the role to use for directory path
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { role: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_acme_eab.%s%s }' % [terraformName, suffix],
    fields:: {
      '#acme_directory':: { 'function': { help: |||
        The ACME directory to which the key belongs
      ||| } },
      acme_directory(suffix=''):: refSelf.plain('.acme_directory%s' % suffix),
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#created_on':: { 'function': { help: |||
        An RFC3339 formatted date time when the EAB token was created
      ||| } },
      created_on(suffix=''):: refSelf.plain('.created_on%s' % suffix),
      '#eab_id':: { 'function': { help: |||
        The identifier of a specific ACME EAB token
      ||| } },
      eab_id(suffix=''):: refSelf.plain('.eab_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer':: { 'function': { help: |||
        Specifies the issuer reference to use for directory path
      ||| } },
      issuer(suffix=''):: refSelf.plain('.issuer%s' % suffix),
      '#key':: { 'function': { help: |||
        The ACME EAB token
      ||| } },
      key(suffix=''):: refSelf.plain('.key%s' % suffix),
      '#key_type':: { 'function': { help: |||
        The key type of the EAB key
      ||| } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role':: { 'function': { help: |||
        Specifies the role to use for directory path
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
    },
  },
}
