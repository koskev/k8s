{
  new(terraformName, backend, key_ref):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: {
        backend: backend,
        key_ref: key_ref,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeyId': { 'function': { help: |||
      ID of the key used. 
    ||| } },
    withKeyId(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_id: value } },
      },
    },
    '#withKeyName': { 'function': { help: |||
      Name of the key. 
    ||| } },
    withKeyName(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKeyRef': { 'function': { help: |||
      Reference to an existing key. 
    ||| } },
    withKeyRef(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_ref: value } },
      },
    },
    '#withKeyType': { 'function': { help: |||
      Type of the key. 
    ||| } },
    withKeyType(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
