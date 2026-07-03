{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_node_taint+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_node_taint+: { [terraformName]+: { id: value } },
      },
    },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_node_taint+: { [terraformName]+: { field_manager: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        kubernetes_node_taint+: { [terraformName]+: { force: value } },
      },
    },
  },
}
