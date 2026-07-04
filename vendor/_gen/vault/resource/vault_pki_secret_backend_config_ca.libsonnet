{
  local outerSelf = self,
  new(terraformName, backend, pem_bundle):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_ca+: {
        [terraformName]+: {
          backend: backend,
          pem_bundle: pem_bundle,
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
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPemBundle':: { 'function': { help: |||
      The key and certificate PEM bundle.
    ||| } },
    withPemBundle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_ca+: { [terraformName]+: { pem_bundle: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_ca.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#pem_bundle':: { 'function': { help: |||
        The key and certificate PEM bundle.
      ||| } },
      pem_bundle(suffix=''):: refSelf.plain('.pem_bundle%s' % suffix),
    },
  },
}
