{
  new(terraformName, data):: {
    _type:: 'tf',
    resource+: {
      kubernetes_config_map_v1_data+: { [terraformName]+: {
        data: data,
      } },
    },
    withData(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { id: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { force: value } },
      },
    },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
  },
}
