{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_namespace_v1+: { [terraformName]+: {
      } },
    },
    withSpec(value):: self {
      data+: {
        kubernetes_namespace_v1+: { [terraformName]+: { spec: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_namespace_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
