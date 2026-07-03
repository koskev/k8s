{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_replication_controller_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_replication_controller_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
