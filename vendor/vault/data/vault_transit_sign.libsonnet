{
  new(terraformName, name, path):: {
    _type:: 'tf',
    data+: {
      vault_transit_sign+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
    withMarshalingAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { marshaling_algorithm: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { name: value } },
      },
    },
    withSaltLength(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { salt_length: value } },
      },
    },
    withSignature(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { namespace: value } },
      },
    },
    withPrehashed(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { prehashed: value } },
      },
    },
    withContext(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { context: value } },
      },
    },
    withHashAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { hash_algorithm: value } },
      },
    },
    withSignatureAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature_algorithm: value } },
      },
    },
    withBatchInput(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { batch_input: value } },
      },
    },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { key_version: value } },
      },
    },
    withBatchResults(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { batch_results: value } },
      },
    },
    withInput(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { input: value } },
      },
    },
    withSignatureContext(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature_context: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { path: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { id: value } },
      },
    },
    withReference(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { reference: value } },
      },
    },
  },
}
