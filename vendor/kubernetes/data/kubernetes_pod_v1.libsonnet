{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_pod_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_pod_v1+: { [terraformName]+: { id: value } },
      },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_pod_v1+: { [terraformName]+: { spec: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_pod_v1+: { [terraformName]+: { status: value } },
      },
    },
  },
}
