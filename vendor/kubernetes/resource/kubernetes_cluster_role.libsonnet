{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_cluster_role+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_cluster_role+: { [terraformName]+: { id: value } },
      },
    },
  },
}
