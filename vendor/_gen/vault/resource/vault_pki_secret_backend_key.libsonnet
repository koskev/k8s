{
  local outerSelf = self,
  new(terraformName, backend, type):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: {
        backend: backend,
        type: type,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Full path where PKI backend is mounted.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { id: value } },
    } },
    '#withKeyBits':: { 'function': {
      help:
        |||
          Specifies the number of bits to use for the generated keys.
        |||,
    } },
    withKeyBits(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { key_bits: value } },
    } },
    '#withKeyName':: { 'function': {
      help:
        |||
          When a new key is created with this request, optionally specifies the name for this.
        |||,
    } },
    withKeyName(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { key_name: value } },
    } },
    '#withKeyType':: { 'function': {
      help:
        |||
          Specifies the desired key type; must be 'rsa', 'ed25519' or 'ec'.
        |||,
    } },
    withKeyType(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { key_type: value } },
    } },
    '#withManagedKeyId':: { 'function': {
      help:
        |||
          The managed key's UUID.
        |||,
    } },
    withManagedKeyId(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { managed_key_id: value } },
    } },
    '#withManagedKeyName':: { 'function': {
      help:
        |||
          The managed key's configured name.
        |||,
    } },
    withManagedKeyName(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { managed_key_name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { namespace: value } },
    } },
    '#withType':: { 'function': {
      help:
        |||
          Specifies the type of the key to create.
        |||,
    } },
    withType(value):: self { resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: { type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_key.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Full path where PKI backend is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key_bits':: { 'function': {
        help:
          |||
            Specifies the number of bits to use for the generated keys.
          |||,
      } },
      key_bits(suffix=''):: refSelf.plain('.key_bits%s' % suffix),
      '#key_id':: { 'function': {
        help:
          |||
            ID of the generated key.
          |||,
      } },
      key_id(suffix=''):: refSelf.plain('.key_id%s' % suffix),
      '#key_name':: { 'function': {
        help:
          |||
            When a new key is created with this request, optionally specifies the name for this.
          |||,
      } },
      key_name(suffix=''):: refSelf.plain('.key_name%s' % suffix),
      '#key_type':: { 'function': {
        help:
          |||
            Specifies the desired key type; must be 'rsa', 'ed25519' or 'ec'.
          |||,
      } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#managed_key_id':: { 'function': {
        help:
          |||
            The managed key's UUID.
          |||,
      } },
      managed_key_id(suffix=''):: refSelf.plain('.managed_key_id%s' % suffix),
      '#managed_key_name':: { 'function': {
        help:
          |||
            The managed key's configured name.
          |||,
      } },
      managed_key_name(suffix=''):: refSelf.plain('.managed_key_name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            Specifies the type of the key to create.
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
