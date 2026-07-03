{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_ingress+: { [terraformName]+: {
      } },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_ingress+: { [terraformName]+: { status: value } },
      },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_ingress+: { [terraformName]+: { spec: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_ingress+: { [terraformName]+: { id: value } },
      },
    },
  },
}
