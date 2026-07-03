{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_endpoints+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_endpoints+: { [terraformName]+: { id: value } },
      },
    },
  },
}
