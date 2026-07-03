{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_ssh_secret_backend_ca+: { [terraformName]+: {
      } },
    },
    '#withBackend': { 'function': { help: |||
      The path of the SSH Secret Backend where the CA should be configured 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { backend: value } },
      },
    },
    '#withGenerateSigningKey': { 'function': { help: |||
      Whether Vault should generate the signing key pair internally. 
    ||| } },
    withGenerateSigningKey(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { generate_signing_key: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeyBits': { 'function': { help: |||
      Specifies the desired key bits for the generated SSH CA key when `generate_signing_key` is set to `true`. 
    ||| } },
    withKeyBits(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { key_bits: value } },
      },
    },
    '#withKeyType': { 'function': { help: |||
      Specifies the desired key type for the generated SSH CA key when `generate_signing_key` is set to `true`. 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withManagedKeyId': { 'function': { help: |||
      The id of the managed key to use. When using a managed key, this field or managed_key_name is required. 
    ||| } },
    withManagedKeyId(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { managed_key_id: value } },
      },
    },
    '#withManagedKeyName': { 'function': { help: |||
      The name of the managed key to use. When using a managed key, this field or managed_key_id is required. 
    ||| } },
    withManagedKeyName(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { managed_key_name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPrivateKey': { 'function': { help: |||
      Private key part the SSH CA key pair; required if generate_signing_key is false. 
    ||| } },
    withPrivateKey(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { private_key: value } },
      },
    },
    '#withPublicKey': { 'function': { help: |||
      Public key part the SSH CA key pair; required if generate_signing_key is false. 
    ||| } },
    withPublicKey(value):: self {
      resource+: {
        vault_ssh_secret_backend_ca+: { [terraformName]+: { public_key: value } },
      },
    },
  },
}
