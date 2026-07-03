{
  new(terraformName, backend, key, plaintext):: {
    _type:: 'tf',
    data+: {
      vault_transit_encrypt+: { [terraformName]+: {
        backend: backend,
        key: key,
        plaintext: plaintext,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      The Transit secret backend the key belongs to. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCiphertext':: { 'function': { help: |||
      Transit encrypted cipher text. 
    ||| } },
    withCiphertext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { ciphertext: value } },
      },
    },
    '#withContext':: { 'function': { help: |||
      Specifies the context for key derivation 
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { context: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { id: value } },
      },
    },
    '#withKey':: { 'function': { help: |||
      Name of the encryption key to use. 
    ||| } },
    withKey(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { key: value } },
      },
    },
    '#withKeyVersion':: { 'function': { help: |||
      The version of the key to use for encryption 
    ||| } },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { key_version: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPlaintext':: { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withPlaintext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { plaintext: value } },
      },
    },
  },
}
