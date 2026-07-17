{
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: {
        backend: backend,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Full path where PKI backend is mounted.
        |||,
    } },
    withBackend(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_issuers.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Full path where PKI backend is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_info':: { 'function': {
        help:
          |||
            Map of issuer strings read from Vault.
          |||,
      } },
      key_info(suffix=''):: refSelf.plain('.key_info%s' % suffix),
      '#key_info_json':: { 'function': {
        help:
          |||
            JSON-encoded key info data read from Vault.
          |||,
      } },
      key_info_json(suffix=''):: refSelf.plain('.key_info_json%s' % suffix),
      '#keys':: { 'function': {
        help:
          |||
            Keys used by issuers under the backend path.
          |||,
      } },
      keys(suffix=''):: refSelf.plain('.keys%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),

    },

  },

}
