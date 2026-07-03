{
  new(terraformName, key_ref, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_key+: { [terraformName]+: {
        key_ref: key_ref,
        backend: backend,
      } },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { namespace: value } },
      },
    },
    withKeyRef(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_ref: value } },
      },
    },
    withKeyName(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_name: value } },
      },
    },
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
    withKeyType(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_type: value } },
      },
    },
    withKeyId(value):: self {
      data+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_id: value } },
      },
    },
  },
}
