{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: {
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { id: value } },
      },
    },
    withManagedKeyName(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    withPublicKey(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { public_key: value } },
      },
    },
    withPrivateKey(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { private_key: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { namespace: value } },
      },
    },
    withManagedKeyId(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { key_type: value } },
      },
    },
    withGenerateSigningKey(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { generate_signing_key: value } },
      },
    },
    withKeyBits(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { key_bits: value } },
      },
    },
  },
}
