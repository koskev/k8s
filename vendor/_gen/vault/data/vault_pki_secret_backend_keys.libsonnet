{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_keys+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withBackend': { 'function': { help: |||
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
    '#withKeyInfo': { 'function': { help: |||
      Map of key strings read from Vault. 
    ||| } },
    withKeyInfo(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { key_info: value } },
      },
    },
    '#withKeyInfoJson': { 'function': { help: |||
      JSON-encoded key data read from Vault. 
    ||| } },
    withKeyInfoJson(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { key_info_json: value } },
      },
    },
    '#withKeys': { 'function': { help: |||
      Keys used under the backend path. 
    ||| } },
    withKeys(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { keys: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
