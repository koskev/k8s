{
  new(terraformName, backend, type):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: {
        backend: backend,
        type: type,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeyBits':: { 'function': { help: |||
      Specifies the number of bits to use for the generated keys. 
    ||| } },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_bits: value } },
      },
    },
    '#withKeyId':: { 'function': { help: |||
      ID of the generated key. 
    ||| } },
    withKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_id: value } },
      },
    },
    '#withKeyName':: { 'function': { help: |||
      When a new key is created with this request, optionally specifies the name for this. 
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      Specifies the desired key type; must be 'rsa', 'ed25519' or 'ec'. 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withManagedKeyId':: { 'function': { help: |||
      The managed key's UUID. 
    ||| } },
    withManagedKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    '#withManagedKeyName':: { 'function': { help: |||
      The managed key's configured name. 
    ||| } },
    withManagedKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Specifies the type of the key to create. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { type: value } },
      },
    },
  },
}
