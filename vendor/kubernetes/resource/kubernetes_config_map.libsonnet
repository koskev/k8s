{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_config_map+: { [terraformName]+: {
      } },
    },
    withBinaryData(value):: self {
      resource+: {
        kubernetes_config_map+: { [terraformName]+: { binary_data: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_config_map+: { [terraformName]+: { id: value } },
      },
    },
    withData(value):: self {
      resource+: {
        kubernetes_config_map+: { [terraformName]+: { data: value } },
      },
    },
    withImmutable(value):: self {
      resource+: {
        kubernetes_config_map+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
