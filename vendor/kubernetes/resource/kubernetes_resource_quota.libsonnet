{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_resource_quota+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_resource_quota+: { [terraformName]+: { id: value } },
      },
    },
  },
}
