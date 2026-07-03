{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_namespace_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_namespace_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withSpec':: { 'function': { help: |||
      Spec defines the behavior of the Namespace. 
    ||| } },
    withSpec(value):: self {
      data+: {
        kubernetes_namespace_v1+: { [terraformName]+: { spec: value } },
      },
    },
  },
}
