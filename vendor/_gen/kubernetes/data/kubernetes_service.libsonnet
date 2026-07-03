{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_service+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_service+: { [terraformName]+: { id: value } },
      },
    },
    '#withSpec': { 'function': { help: |||
      Spec defines the behavior of a service. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status 
    ||| } },
    withSpec(value):: self {
      data+: {
        kubernetes_service+: { [terraformName]+: { spec: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_service+: { [terraformName]+: { status: value } },
      },
    },
  },
}
