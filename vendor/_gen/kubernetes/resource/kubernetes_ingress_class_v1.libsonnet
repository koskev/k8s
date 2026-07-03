{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_ingress_class_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_ingress_class_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
