{
  new(terraformName, ciphertext, backend, key):: {
    _type:: 'tf',
    data+: {
      vault_transit_decrypt+: { [terraformName]+: {
        ciphertext: ciphertext,
        backend: backend,
        key: key,
      } },
    },
    withCiphertext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { ciphertext: value } },
      },
    },
    withPlaintext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { plaintext: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { id: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { backend: value } },
      },
    },
    withContext(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { context: value } },
      },
    },
    withKey(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { key: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_transit_decrypt+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
