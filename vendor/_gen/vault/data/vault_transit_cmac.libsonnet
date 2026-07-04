{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_transit_cmac+: {
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
        vault_transit_cmac+: { [terraformName]+: { batch_input: value } },
      },
    },
    '#withBatchResults':: { 'function': { help: |||
      The results returned from Vault if using batch_input
    ||| } },
    withBatchResults(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { batch_results: value } },
      },
    },
    '#withCmac':: { 'function': { help: |||
      The CMAC returned from Vault if using input
    ||| } },
    withCmac(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { cmac: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { id: value } },
      },
    },
    '#withInput':: { 'function': { help: |||
      Specifies the base64 encoded input data. One of input or batch_input must be supplied.
    ||| } },
    withInput(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { input: value } },
      },
    },
    '#withKeyVersion':: { 'function': { help: |||
      The version of the key to use
    ||| } },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { key_version: value } },
      },
    },
    '#withMacLength':: { 'function': { help: |||
      Specifies the MAC length to use (POST body parameter). The mac_length cannot be larger than the cipher's block size.
    ||| } },
    withMacLength(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { mac_length: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the CMAC key to use.
    ||| } },
    withName(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      The Transit secret backend the key belongs to.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { path: value } },
      },
    },
    '#withUrlMacLength':: { 'function': { help: |||
      Specifies the MAC length to use (URL parameter). If provided, this value overrides mac_length. The url_mac_length cannot be larger than the cipher's block size.
    ||| } },
    withUrlMacLength(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { url_mac_length: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_transit_cmac.%s%s }' % [terraformName, suffix],
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
        The CMAC returned from Vault if using input
      ||| } },
      cmac(suffix=''):: refSelf.plain('.cmac%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#input':: { 'function': { help: |||
        Specifies the base64 encoded input data. One of input or batch_input must be supplied.
      ||| } },
      input(suffix=''):: refSelf.plain('.input%s' % suffix),
      '#key_version':: { 'function': { help: |||
        The version of the key to use
      ||| } },
      key_version(suffix=''):: refSelf.plain('.key_version%s' % suffix),
      '#mac_length':: { 'function': { help: |||
        Specifies the MAC length to use (POST body parameter). The mac_length cannot be larger than the cipher's block size.
      ||| } },
      mac_length(suffix=''):: refSelf.plain('.mac_length%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the CMAC key to use.
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
      '#url_mac_length':: { 'function': { help: |||
        Specifies the MAC length to use (URL parameter). If provided, this value overrides mac_length. The url_mac_length cannot be larger than the cipher's block size.
      ||| } },
      url_mac_length(suffix=''):: refSelf.plain('.url_mac_length%s' % suffix),
    },
  },
}
