{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_keys+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { namespace: value } },
      },
    },
    withKeys(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { keys: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { backend: value } },
      },
    },
    withKeyInfo(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { key_info: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { id: value } },
      },
    },
    withKeyInfoJson(value):: self {
      data+: {
        vault_pki_secret_backend_keys+: { [terraformName]+: { key_info_json: value } },
      },
    },
  },
}
