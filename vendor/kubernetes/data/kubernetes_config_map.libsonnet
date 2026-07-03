{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_config_map+: { [terraformName]+: {
      } },
    },
    withImmutable(value):: self {
      data+: {
        kubernetes_config_map+: { [terraformName]+: { immutable: value } },
      },
    },
    withData(value):: self {
      data+: {
        kubernetes_config_map+: { [terraformName]+: { data: value } },
      },
    },
    withBinaryData(value):: self {
      data+: {
        kubernetes_config_map+: { [terraformName]+: { binary_data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_config_map+: { [terraformName]+: { id: value } },
      },
    },
  },
}
