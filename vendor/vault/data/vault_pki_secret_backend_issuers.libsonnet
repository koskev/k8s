{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_issuers+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_issuers+: { [terraformName]+: { id: value } },
      },
    },
    withKeys(value):: self {
      data+: {
        vault_pki_secret_backend_issuers+: { [terraformName]+: { keys: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_issuers+: { [terraformName]+: { backend: value } },
      },
    },
    withKeyInfo(value):: self {
      data+: {
        vault_pki_secret_backend_issuers+: { [terraformName]+: { key_info: value } },
      },
    },
    withKeyInfoJson(value):: self {
      data+: {
        vault_pki_secret_backend_issuers+: { [terraformName]+: { key_info_json: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_issuers+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
