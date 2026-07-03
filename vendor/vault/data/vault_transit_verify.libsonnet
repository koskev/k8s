{
  new(terraformName, path, name):: {
    _type:: 'tf',
    data+: {
      vault_transit_verify+: { [terraformName]+: {
        path: path,
        name: name,
      } },
    },
    withContext(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { context: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { path: value } },
      },
    },
    withHmac(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { hmac: value } },
      },
    },
    withHashAlgorithm(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { hash_algorithm: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { name: value } },
      },
    },
    withReference(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { reference: value } },
      },
    },
    withBatchResults(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { batch_results: value } },
      },
    },
    withCmac(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { cmac: value } },
      },
    },
    withSignatureAlgorithm(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { signature_algorithm: value } },
      },
    },
    withInput(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { input: value } },
      },
    },
    withSignature(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { signature: value } },
      },
    },
    withPrehashed(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { prehashed: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { namespace: value } },
      },
    },
    withSaltLength(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { salt_length: value } },
      },
    },
    withSignatureContext(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { signature_context: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { id: value } },
      },
    },
    withMarshalingAlgorithm(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { marshaling_algorithm: value } },
      },
    },
    withMacLength(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { mac_length: value } },
      },
    },
    withBatchInput(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { batch_input: value } },
      },
    },
    withValid(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { valid: value } },
      },
    },
  },
}
