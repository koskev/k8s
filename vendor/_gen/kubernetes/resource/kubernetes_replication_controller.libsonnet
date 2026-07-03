{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_replication_controller+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_replication_controller+: { [terraformName]+: { id: value } },
      },
    },
  },
}
