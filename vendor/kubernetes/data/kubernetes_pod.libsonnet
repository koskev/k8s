{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_pod+: { [terraformName]+: {
      } },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_pod+: { [terraformName]+: { spec: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_pod+: { [terraformName]+: { id: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_pod+: { [terraformName]+: { status: value } },
      },
    },
  },
}
