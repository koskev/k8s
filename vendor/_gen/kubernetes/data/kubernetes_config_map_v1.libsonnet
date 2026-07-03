{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_config_map_v1+: { [terraformName]+: {
      } },
    },
    '#withBinaryData': { 'function': { help: |||
      A map of the config map binary data. 
    ||| } },
    withBinaryData(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    '#withData': { 'function': { help: |||
      A map of the config map data. 
    ||| } },
    withData(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withImmutable': { 'function': { help: |||
      Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil. 
    ||| } },
    withImmutable(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
