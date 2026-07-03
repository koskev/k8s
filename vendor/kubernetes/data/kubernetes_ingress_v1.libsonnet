{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_ingress_v1+: { [terraformName]+: {
      } },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_ingress_v1+: { [terraformName]+: { status: value } },
      },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_ingress_v1+: { [terraformName]+: { spec: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_ingress_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
