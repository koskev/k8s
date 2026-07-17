{
  local outerSelf = self,
  new(terraformName, backend, key_ref):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: {
        backend: backend,
        key_ref: key_ref,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Full path where PKI backend is mounted.
        |||,
    } },
    withBackend(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { id: value } },
    } },
    '#withKeyRef':: { 'function': {
      help:
        |||
          Reference to an existing key.
        |||,
    } },
    withKeyRef(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { key_ref: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Full path where PKI backend is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_id':: { 'function': {
        help:
          |||
            ID of the key used.
          |||,
      } },
      key_id(suffix=''):: refSelf.plain('.key_id%s' % suffix),
      '#key_name':: { 'function': {
        help:
          |||
            Name of the key.
          |||,
      } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#key_ref':: { 'function': {
        help:
          |||
            Reference to an existing key.
          |||,
      } },
      key_ref(suffix=''):: refSelf.plain('.key_ref%s' % suffix),
      '#key_type':: { 'function': {
        help:
          |||
            Type of the key.
          |||,
      } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
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
