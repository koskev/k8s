{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_namespace+: { [terraformName]+: {
      } },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_namespace+: { [terraformName]+: { spec: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_namespace+: { [terraformName]+: { id: value } },
      },
    },
  },
}
