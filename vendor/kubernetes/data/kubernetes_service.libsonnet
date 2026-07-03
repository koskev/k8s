{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_service+: { [terraformName]+: {
      } },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_service+: { [terraformName]+: { status: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_service+: { [terraformName]+: { id: value } },
      },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_service+: { [terraformName]+: { spec: value } },
      },
    },
  },
}
