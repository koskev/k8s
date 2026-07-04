{
  local outerSelf = self,
  new(terraformName, backend, certificate):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_intermediate_set_signed+: {
        [terraformName]+: {
          backend: backend,
          certificate: certificate,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCertificate':: { 'function': { help: |||
      The certificate.
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { certificate: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_intermediate_set_signed+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_intermediate_set_signed.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#certificate':: { 'function': { help: |||
        The certificate.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#imported_issuers':: { 'function': { help: |||
        The imported issuers.
      ||| } },
      imported_issuers(suffix=''):: refSelf.plain('.imported_issuers%s' % suffix),
      '#imported_keys':: { 'function': { help: |||
        The imported keys.
      ||| } },
      imported_keys(suffix=''):: refSelf.plain('.imported_keys%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
