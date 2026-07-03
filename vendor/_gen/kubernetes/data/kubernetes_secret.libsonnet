{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      kubernetes_secret+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBinaryData':: { 'function': { help: |||
      A map of the secret data with values encoded in base64 format 
    ||| } },
    withBinaryData(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { binary_data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#binary_data':: { 'function': { help: |||
        A map of the secret data with values encoded in base64 format 
      ||| } },
      binary_data(suffix=''):: refSelf.plain('.binary_data%s' % suffix),
      '#data':: { 'function': { help: |||
        A map of the secret data. 
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#immutable':: { 'function': { help: |||
        Ensures that data stored in the Secret cannot be updated (only object metadata can be modified). 
      ||| } },
      immutable(suffix=''):: refSelf.plain('.immutable%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of secret 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
