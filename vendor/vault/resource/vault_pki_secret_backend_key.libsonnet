{
  new(terraformName, type, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_key+: { [terraformName]+: {
        type: type,
        backend: backend,
      } },
    },
    withKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_name: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { type: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { namespace: value } },
      },
    },
    withManagedKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    withManagedKeyName(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    withKeyBits(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_bits: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { backend: value } },
      },
    },
    withKeyId(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_id: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_key+: { [terraformName]+: { key_type: value } },
      },
    },
  },
}
