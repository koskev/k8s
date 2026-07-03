{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_limit_range+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_limit_range+: { [terraformName]+: { id: value } },
      },
    },
  },
}
