{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_endpoints_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_endpoints_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
