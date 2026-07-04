{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_keys+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Full path where PKI backend is mounted.
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_keys.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Full path where PKI backend is mounted.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_info':: { 'function': { help: |||
        Map of key strings read from Vault.
      ||| } },
      key_info(suffix=''):: refSelf.plain('.key_info%s' % suffix),
      '#key_info_json':: { 'function': { help: |||
        JSON-encoded key data read from Vault.
      ||| } },
      key_info_json(suffix=''):: refSelf.plain('.key_info_json%s' % suffix),
      '#keys':: { 'function': { help: |||
        Keys used under the backend path.
      ||| } },
      keys(suffix=''):: refSelf.plain('.keys%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
