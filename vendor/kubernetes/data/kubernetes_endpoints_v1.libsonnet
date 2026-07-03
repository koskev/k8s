{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_endpoints_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_endpoints_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
