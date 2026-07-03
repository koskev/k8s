{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_limit_range_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_limit_range_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
