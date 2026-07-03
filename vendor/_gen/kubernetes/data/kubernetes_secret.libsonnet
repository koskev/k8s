{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_secret+: { [terraformName]+: {
      } },
    },
    '#withBinaryData':: { 'function': { help: |||
      A map of the secret data with values encoded in base64 format 
    ||| } },
    withBinaryData(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { binary_data: value } },
      },
    },
    '#withData':: { 'function': { help: |||
      A map of the secret data. 
    ||| } },
    withData(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withImmutable':: { 'function': { help: |||
      Ensures that data stored in the Secret cannot be updated (only object metadata can be modified). 
    ||| } },
    withImmutable(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { immutable: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of secret 
    ||| } },
    withType(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { type: value } },
      },
    },
  },
}
