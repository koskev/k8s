{
  local outerSelf = self,
  new(terraformName, path, serial):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_cert_metadata+: {
        [terraformName]+: {
          path: path,
          serial: serial,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where PKI backend is mounted.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { path: value } },
      },
    },
    '#withSerial':: { 'function': { help: |||
      Specifies the serial of the certificate whose metadata to read.
    ||| } },
    withSerial(value):: self {
      data+: {
        vault_pki_secret_backend_cert_metadata+: { [terraformName]+: { serial: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_cert_metadata.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cert_metadata':: { 'function': { help: |||
        The metadata returned from Vault
      ||| } },
      cert_metadata(suffix=''):: refSelf.plain('.cert_metadata%s' % suffix),
      '#expiration':: { 'function': { help: |||
        The certificate expiration as a Unix-style timestamp.
      ||| } },
      expiration(suffix=''):: refSelf.plain('.expiration%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer_id':: { 'function': { help: |||
        ID of the issuer.
      ||| } },
      issuer_id(suffix=''):: refSelf.plain('.issuer_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path where PKI backend is mounted.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#role':: { 'function': { help: |||
        The role that issued the certificate
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#serial':: { 'function': { help: |||
        Specifies the serial of the certificate whose metadata to read.
      ||| } },
      serial(suffix=''):: refSelf.plain('.serial%s' % suffix),
      '#serial_number':: { 'function': { help: |||
        The certificate serial number
      ||| } },
      serial_number(suffix=''):: refSelf.plain('.serial_number%s' % suffix),
    },
  },
}
