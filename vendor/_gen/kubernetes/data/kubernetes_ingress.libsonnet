{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_ingress+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_ingress+: { [terraformName]+: { id: value } },
      },
    },
    '#withSpec':: { 'function': { help: |||
      spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status 
    ||| } },
    withSpec(value):: self {
      data+: {
        kubernetes_ingress+: { [terraformName]+: { spec: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_ingress+: { [terraformName]+: { status: value } },
      },
    },
  },
}
