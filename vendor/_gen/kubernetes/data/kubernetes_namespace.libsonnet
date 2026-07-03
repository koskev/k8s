{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_namespace+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_namespace+: { [terraformName]+: { id: value } },
      },
    },
    '#withSpec':: { 'function': { help: |||
      Spec defines the behavior of the Namespace. 
    ||| } },
    withSpec(value):: self {
      data+: {
        kubernetes_namespace+: { [terraformName]+: { spec: value } },
      },
    },
  },
}
