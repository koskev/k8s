{
  new(terraformName, name, path):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_transit_verify+: {
        [terraformName]+: {
          name: name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBatchInput':: { 'function': { help: |||
      Specifies a list of items for processing. When this parameter is set, any supplied 'input' or 'context' parameters will be ignored. Responses are returned in the 'batch_results' array component of the 'data' element of the response. Any batch output will preserve the order of the batch input. If the input data value of an item is invalid, the corresponding item in the 'batch_results' will have the key 'error' with a value describing the error. 
    ||| } },
    withBatchInput(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { batch_input: value } },
      },
    },
    '#withBatchResults':: { 'function': { help: |||
      The results returned from Vault if using batch_input 
    ||| } },
    withBatchResults(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { batch_results: value } },
      },
    },
    '#withCmac':: { 'function': { help: |||
      (Enterprise only) Specifies the signature output from the /transit/cmac function. One of the following arguments must be supplied signature, hmac or cmac. 
    ||| } },
    withCmac(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { cmac: value } },
      },
    },
    '#withContext':: { 'function': { help: |||
      Base64 encoded context for key derivation. Required if key derivation is enabled; currently only available with ed25519 keys. 
    ||| } },
    withContext(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { context: value } },
      },
    },
    '#withHashAlgorithm':: { 'function': { help: |||
      Specifies the hash algorithm to use. 
    ||| } },
    withHashAlgorithm(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { hash_algorithm: value } },
      },
    },
    '#withHmac':: { 'function': { help: |||
      Specifies the signature output from the /transit/hmac function. One of the following arguments must be supplied signature, hmac or cmac. 
    ||| } },
    withHmac(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { hmac: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { id: value } },
      },
    },
    '#withInput':: { 'function': { help: |||
      Specifies the base64 encoded input data. One of input or batch_input must be supplied. 
    ||| } },
    withInput(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { input: value } },
      },
    },
    '#withMacLength':: { 'function': { help: |||
      Specifies the MAC length used to generate a CMAC. The mac_length cannot be larger than the cipher's block size. 
    ||| } },
    withMacLength(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { mac_length: value } },
      },
    },
    '#withMarshalingAlgorithm':: { 'function': { help: |||
      Specifies the way in which the signature was originally marshaled. This currently only applies to ECDSA keys. 
    ||| } },
    withMarshalingAlgorithm(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { marshaling_algorithm: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the encryption key that was used to generate the signature or HMAC. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      The Transit secret backend the key belongs to. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { path: value } },
      },
    },
    '#withPrehashed':: { 'function': { help: |||
      Set to true when the input is already hashed. If the key type is rsa-2048, rsa-3072 or rsa-4096, then the algorithm used to hash the input should be indicated by the hash_algorithm parameter. Just as the value to sign should be the base64-encoded representation of the exact binary data you want signed, when set, input is expected to be base64-encoded binary hashed data, not hex-formatted. (As an example, on the command line, you could generate a suitable input via openssl dgst -sha256 -binary | base64.) 
    ||| } },
    withPrehashed(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { prehashed: value } },
      },
    },
    '#withReference':: { 'function': { help: |||
      A user-supplied string that will be present in the reference field on the corresponding batch_results item in the response, to assist in understanding which result corresponds to a particular input. Only valid on batch requests when using ‘batch_input’ below. 
    ||| } },
    withReference(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { reference: value } },
      },
    },
    '#withSaltLength':: { 'function': { help: |||
      The salt length used to sign. This currently only applies to the RSA PSS signature scheme. 
    ||| } },
    withSaltLength(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { salt_length: value } },
      },
    },
    '#withSignature':: { 'function': { help: |||
      Specifies the signature output from the /transit/sign function. One of the following arguments must be supplied signature, hmac or cmac. 
    ||| } },
    withSignature(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { signature: value } },
      },
    },
    '#withSignatureAlgorithm':: { 'function': { help: |||
      When using a RSA key, specifies the RSA signature algorithm to use for signature verification. 
    ||| } },
    withSignatureAlgorithm(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { signature_algorithm: value } },
      },
    },
    '#withSignatureContext':: { 'function': { help: |||
      Base64 encoded context for Ed25519ctx and Ed25519ph signatures. 
    ||| } },
    withSignatureContext(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { signature_context: value } },
      },
    },
    '#withValid':: { 'function': { help: |||
      Indicates whether verification succeeded 
    ||| } },
    withValid(value):: self {
      data+: {
        vault_transit_verify+: { [terraformName]+: { valid: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_transit_verify.%s%s }' % [terraformName, suffix],
    fields:: {
      '#batch_input':: { 'function': { help: |||
        Specifies a list of items for processing. When this parameter is set, any supplied 'input' or 'context' parameters will be ignored. Responses are returned in the 'batch_results' array component of the 'data' element of the response. Any batch output will preserve the order of the batch input. If the input data value of an item is invalid, the corresponding item in the 'batch_results' will have the key 'error' with a value describing the error. 
      ||| } },
      batch_input(suffix=''):: refSelf.plain('.batch_input%s' % suffix),
      '#batch_results':: { 'function': { help: |||
        The results returned from Vault if using batch_input 
      ||| } },
      batch_results(suffix=''):: refSelf.plain('.batch_results%s' % suffix),
      '#cmac':: { 'function': { help: |||
        (Enterprise only) Specifies the signature output from the /transit/cmac function. One of the following arguments must be supplied signature, hmac or cmac. 
      ||| } },
      cmac(suffix=''):: refSelf.plain('.cmac%s' % suffix),
      '#context':: { 'function': { help: |||
        Base64 encoded context for key derivation. Required if key derivation is enabled; currently only available with ed25519 keys. 
      ||| } },
      context(suffix=''):: refSelf.plain('.context%s' % suffix),
      '#hash_algorithm':: { 'function': { help: |||
        Specifies the hash algorithm to use. 
      ||| } },
      hash_algorithm(suffix=''):: refSelf.plain('.hash_algorithm%s' % suffix),
      '#hmac':: { 'function': { help: |||
        Specifies the signature output from the /transit/hmac function. One of the following arguments must be supplied signature, hmac or cmac. 
      ||| } },
      hmac(suffix=''):: refSelf.plain('.hmac%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#input':: { 'function': { help: |||
        Specifies the base64 encoded input data. One of input or batch_input must be supplied. 
      ||| } },
      input(suffix=''):: refSelf.plain('.input%s' % suffix),
      '#mac_length':: { 'function': { help: |||
        Specifies the MAC length used to generate a CMAC. The mac_length cannot be larger than the cipher's block size. 
      ||| } },
      mac_length(suffix=''):: refSelf.plain('.mac_length%s' % suffix),
      '#marshaling_algorithm':: { 'function': { help: |||
        Specifies the way in which the signature was originally marshaled. This currently only applies to ECDSA keys. 
      ||| } },
      marshaling_algorithm(suffix=''):: refSelf.plain('.marshaling_algorithm%s' % suffix),
      '#name':: { 'function': { help: |||
        Specifies the name of the encryption key that was used to generate the signature or HMAC. 
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
        Specifies the signature output from the /transit/sign function. One of the following arguments must be supplied signature, hmac or cmac. 
      ||| } },
      signature(suffix=''):: refSelf.plain('.signature%s' % suffix),
      '#signature_algorithm':: { 'function': { help: |||
        When using a RSA key, specifies the RSA signature algorithm to use for signature verification. 
      ||| } },
      signature_algorithm(suffix=''):: refSelf.plain('.signature_algorithm%s' % suffix),
      '#signature_context':: { 'function': { help: |||
        Base64 encoded context for Ed25519ctx and Ed25519ph signatures. 
      ||| } },
      signature_context(suffix=''):: refSelf.plain('.signature_context%s' % suffix),
      '#valid':: { 'function': { help: |||
        Indicates whether verification succeeded 
      ||| } },
      valid(suffix=''):: refSelf.plain('.valid%s' % suffix),
    },
  },
}
