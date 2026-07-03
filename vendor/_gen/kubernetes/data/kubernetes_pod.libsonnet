{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_pod+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_pod+: { [terraformName]+: { id: value } },
      },
    },
    '#withSpec':: { 'function': { help: |||
      Specification of the desired behavior of the pod. 
    ||| } },
    withSpec(value):: self {
      data+: {
        kubernetes_pod+: { [terraformName]+: { spec: value } },
      },
    },
    withStatus(value):: self {
      data+: {
        kubernetes_pod+: { [terraformName]+: { status: value } },
      },
    },
  },
}
