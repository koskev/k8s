{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_cluster_role_binding+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_cluster_role_binding+: { [terraformName]+: { id: value } },
      },
    },
  },
}
