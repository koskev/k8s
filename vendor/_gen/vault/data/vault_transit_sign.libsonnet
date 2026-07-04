{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_transit_sign+: {
        [terraformName]+: {
          name: name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { providers: value } },
      },
    },
    '#batch_input':: { 'function': { help: |||
      Specifies a list of items for processing. When this parameter is set, any supplied 'input' or 'context' parameters will be ignored. Responses are returned in the 'batch_results' array component of the 'data' element of the response. Any batch output will preserve the order of the batch input. If the input data value of an item is invalid, the corresponding item in the 'batch_results' will have the key 'error' with a value describing the error.
    ||| } },
    withBatchInput(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { batch_input: value } },
      },
    },
    '#batch_results':: { 'function': { help: |||
      The results returned from Vault if using batch_input
    ||| } },
    withBatchResults(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { batch_results: value } },
      },
    },
    '#context':: { 'function': { help: |||
      Base64 encoded context for key derivation. Required if key derivation is enabled; currently only available with ed25519 keys.
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { context: value } },
      },
    },
    '#hash_algorithm':: { 'function': { help: |||
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
    '#input':: { 'function': { help: |||
      Specifies the base64 encoded input data. One of input or batch_input must be supplied.
    ||| } },
    withInput(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { input: value } },
      },
    },
    '#key_version':: { 'function': { help: |||
      The version of the key to use
    ||| } },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { key_version: value } },
      },
    },
    '#marshaling_algorithm':: { 'function': { help: |||
      Specifies the way in which the signature should be marshaled. This currently only applies to ECDSA keys.
    ||| } },
    withMarshalingAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { marshaling_algorithm: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Name of the signing key to use.
    ||| } },
    withName(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      The Transit secret backend the key belongs to.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { path: value } },
      },
    },
    '#prehashed':: { 'function': { help: |||
      Set to true when the input is already hashed. If the key type is rsa-2048, rsa-3072 or rsa-4096, then the algorithm used to hash the input should be indicated by the hash_algorithm parameter. Just as the value to sign should be the base64-encoded representation of the exact binary data you want signed, when set, input is expected to be base64-encoded binary hashed data, not hex-formatted. (As an example, on the command line, you could generate a suitable input via openssl dgst -sha256 -binary | base64.)
    ||| } },
    withPrehashed(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { prehashed: value } },
      },
    },
    '#reference':: { 'function': { help: |||
      A user-supplied string that will be present in the reference field on the corresponding batch_results item in the response, to assist in understanding which result corresponds to a particular input. Only valid on batch requests when using ‘batch_input’ below.
    ||| } },
    withReference(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { reference: value } },
      },
    },
    '#salt_length':: { 'function': { help: |||
      The salt length used to sign. This currently only applies to the RSA PSS signature scheme.
    ||| } },
    withSaltLength(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { salt_length: value } },
      },
    },
    '#signature':: { 'function': { help: |||
      The signature returned from Vault if using input
    ||| } },
    withSignature(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature: value } },
      },
    },
    '#signature_algorithm':: { 'function': { help: |||
      When using a RSA key, specifies the RSA signature algorithm to use for signing.
    ||| } },
    withSignatureAlgorithm(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature_algorithm: value } },
      },
    },
    '#signature_context':: { 'function': { help: |||
      Base64 encoded context for Ed25519ctx and Ed25519ph signatures.
    ||| } },
    withSignatureContext(value):: self {
      data+: {
        vault_transit_sign+: { [terraformName]+: { signature_context: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_transit_sign.%s%s }' % [terraformName, suffix],
    fields:: {
      '#batch_input':: { 'function': { help: |||
        Specifies a list of items for processing. When this parameter is set, any supplied 'input' or 'context' parameters will be ignored. Responses are returned in the 'batch_results' array component of the 'data' element of the response. Any batch output will preserve the order of the batch input. If the input data value of an item is invalid, the corresponding item in the 'batch_results' will have the key 'error' with a value describing the error.
      ||| } },
      batch_input(suffix=''):: refSelf.plain('.batch_input%s' % suffix),
      '#batch_results':: { 'function': { help: |||
        The results returned from Vault if using batch_input
      ||| } },
      batch_results(suffix=''):: refSelf.plain('.batch_results%s' % suffix),
      '#context':: { 'function': { help: |||
        Base64 encoded context for key derivation. Required if key derivation is enabled; currently only available with ed25519 keys.
      ||| } },
      context(suffix=''):: refSelf.plain('.context%s' % suffix),
      '#hash_algorithm':: { 'function': { help: |||
        Specifies the hash algorithm to use for supporting key types (notably, not including ed25519 which specifies its own hash algorithm).
      ||| } },
      hash_algorithm(suffix=''):: refSelf.plain('.hash_algorithm%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#input':: { 'function': { help: |||
        Specifies the base64 encoded input data. One of input or batch_input must be supplied.
      ||| } },
      input(suffix=''):: refSelf.plain('.input%s' % suffix),
      '#key_version':: { 'function': { help: |||
        The version of the key to use
      ||| } },
      key_version(suffix=''):: refSelf.plain('.key_version%s' % suffix),
      '#marshaling_algorithm':: { 'function': { help: |||
        Specifies the way in which the signature should be marshaled. This currently only applies to ECDSA keys.
      ||| } },
      marshaling_algorithm(suffix=''):: refSelf.plain('.marshaling_algorithm%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the signing key to use.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        The Transit secret backend the key belongs to.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#prehashed':: { 'function': { help: |||
        Set to true when the input is already hashed. If the key type is rsa-2048, rsa-3072 or rsa-4096, then the algorithm used to hash the input should be indicated by the hash_algorithm parameter. Just as the value to sign should be the base64-encoded representation of the exact binary data you want signed, when set, input is expected to be base64-encoded binary hashed data, not hex-formatted. (As an example, on the command line, you could generate a suitable input via openssl dgst -sha256 -binary | base64.)
      ||| } },
      prehashed(suffix=''):: refSelf.plain('.prehashed%s' % suffix),
      '#reference':: { 'function': { help: |||
        A user-supplied string that will be present in the reference field on the corresponding batch_results item in the response, to assist in understanding which result corresponds to a particular input. Only valid on batch requests when using ‘batch_input’ below.
      ||| } },
      reference(suffix=''):: refSelf.plain('.reference%s' % suffix),
      '#salt_length':: { 'function': { help: |||
        The salt length used to sign. This currently only applies to the RSA PSS signature scheme.
      ||| } },
      salt_length(suffix=''):: refSelf.plain('.salt_length%s' % suffix),
      '#signature':: { 'function': { help: |||
        The signature returned from Vault if using input
      ||| } },
      signature(suffix=''):: refSelf.plain('.signature%s' % suffix),
      '#signature_algorithm':: { 'function': { help: |||
        When using a RSA key, specifies the RSA signature algorithm to use for signing.
      ||| } },
      signature_algorithm(suffix=''):: refSelf.plain('.signature_algorithm%s' % suffix),
      '#signature_context':: { 'function': { help: |||
        Base64 encoded context for Ed25519ctx and Ed25519ph signatures.
      ||| } },
      signature_context(suffix=''):: refSelf.plain('.signature_context%s' % suffix),
    },
  },
}
