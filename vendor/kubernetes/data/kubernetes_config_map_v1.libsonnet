{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_config_map_v1+: { [terraformName]+: {
      } },
    },
    withBinaryData(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
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
    withImmutable(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
