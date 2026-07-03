{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_service_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_service_v1+: { [terraformName]+: { id: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_service_v1+: { [terraformName]+: { status: value } },
      },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_service_v1+: { [terraformName]+: { spec: value } },
      },
    },
  },
}
