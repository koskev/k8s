{
  new(terraformName, backend, ciphertext, key):: {
    _type:: 'tf',
    data+: {
      vault_transit_decrypt+: { [terraformName]+: {
        backend: backend,
        ciphertext: ciphertext,
        key: key,
      } },
    },
    '#withBackend':: { 'function': { help: |||
      The Transit secret backend the key belongs to. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCiphertext':: { 'function': { help: |||
      Transit encrypted cipher text. 
    ||| } },
    withCiphertext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { ciphertext: value } },
      },
    },
    '#withContext':: { 'function': { help: |||
      Specifies the context for key derivation 
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { context: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { id: value } },
      },
    },
    '#withKey':: { 'function': { help: |||
      Name of the decryption key to use. 
    ||| } },
    withKey(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { key: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPlaintext':: { 'function': { help: |||
      Decrypted plain text 
    ||| } },
    withPlaintext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { plaintext: value } },
      },
    },
  },
}
