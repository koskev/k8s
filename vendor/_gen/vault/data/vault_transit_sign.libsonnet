{
  new(terraformName, name, path):: {
    _type:: 'tf',
    data+: {
      vault_transit_sign+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
    '#withBatchInput': { 'function': { help: |||
      Specifies a list of items for processing. When this parameter is set, any supplied 'input' or 'context' parameters will be ignored. Responses are returned in the 'batch_results' array component of the 'data' element of the response. Any batch output will preserve the order of the batch input. If the input data value of an item is invalid, the corresponding item in the 'batch_results' will have the key 'error' with a value describing the error. 
    ||| } },
    withBatchInput(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { batch_input: value } },
      },
    },
    '#withBatchResults': { 'function': { help: |||
      The results returned from Vault if using batch_input 
    ||| } },
    withBatchResults(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { batch_results: value } },
      },
    },
    '#withContext': { 'function': { help: |||
      Base64 encoded context for key derivation. Required if key derivation is enabled; currently only available with ed25519 keys. 
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { context: value } },
      },
    },
    '#withHashAlgorithm': { 'function': { help: |||
      Specifies the hash algorithm to use for supporting key types (notably, not including ed25519 which specifies its own hash algorithm). 
    ||| } },
    withHashAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { hash_algorithm: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { id: value } },
      },
    },
    '#withInput': { 'function': { help: |||
      Specifies the base64 encoded input data. One of input or batch_input must be supplied. 
    ||| } },
    withInput(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { input: value } },
      },
    },
    '#withKeyVersion': { 'function': { help: |||
      The version of the key to use 
    ||| } },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { key_version: value } },
      },
    },
    '#withMarshalingAlgorithm': { 'function': { help: |||
      Specifies the way in which the signature should be marshaled. This currently only applies to ECDSA keys. 
    ||| } },
    withMarshalingAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { marshaling_algorithm: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the signing key to use. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      The Transit secret backend the key belongs to. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { path: value } },
      },
    },
    '#withPrehashed': { 'function': { help: |||
      Set to true when the input is already hashed. If the key type is rsa-2048, rsa-3072 or rsa-4096, then the algorithm used to hash the input should be indicated by the hash_algorithm parameter. Just as the value to sign should be the base64-encoded representation of the exact binary data you want signed, when set, input is expected to be base64-encoded binary hashed data, not hex-formatted. (As an example, on the command line, you could generate a suitable input via openssl dgst -sha256 -binary | base64.) 
    ||| } },
    withPrehashed(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { prehashed: value } },
      },
    },
    '#withReference': { 'function': { help: |||
      A user-supplied string that will be present in the reference field on the corresponding batch_results item in the response, to assist in understanding which result corresponds to a particular input. Only valid on batch requests when using ‘batch_input’ below. 
    ||| } },
    withReference(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { reference: value } },
      },
    },
    '#withSaltLength': { 'function': { help: |||
      The salt length used to sign. This currently only applies to the RSA PSS signature scheme. 
    ||| } },
    withSaltLength(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { salt_length: value } },
      },
    },
    '#withSignature': { 'function': { help: |||
      The signature returned from Vault if using input 
    ||| } },
    withSignature(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature: value } },
      },
    },
    '#withSignatureAlgorithm': { 'function': { help: |||
      When using a RSA key, specifies the RSA signature algorithm to use for signing. 
    ||| } },
    withSignatureAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature_algorithm: value } },
      },
    },
    '#withSignatureContext': { 'function': { help: |||
      Base64 encoded context for Ed25519ctx and Ed25519ph signatures. 
    ||| } },
    withSignatureContext(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature_context: value } },
      },
    },
  },
}
