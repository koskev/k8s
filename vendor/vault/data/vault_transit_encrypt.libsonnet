{
  new(terraformName, plaintext, backend, key):: {
    _type:: 'tf',
    data+: {
      vault_transit_encrypt+: { [terraformName]+: {
        plaintext: plaintext,
        backend: backend,
        key: key,
      } },
    },
    withNamespace(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { namespace: value } },
      },
    },
    withCiphertext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { ciphertext: value } },
      },
    },
    withPlaintext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { plaintext: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { backend: value } },
      },
    },
    withContext(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { context: value } },
      },
    },
    withKey(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { key: value } },
      },
    },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { key_version: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_encrypt+: { [terraformName]+: { id: value } },
      },
    },
  },
}
