{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_ingress_class+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_ingress_class+: { [terraformName]+: { id: value } },
      },
    },
  },
}
