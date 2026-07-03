{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_config_map_v1+: { [terraformName]+: {
      } },
    },
    withBinaryData(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    withData(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { id: value } },
      },
    },
    withImmutable(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
