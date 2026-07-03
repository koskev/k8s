{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_nodes+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_nodes+: { [terraformName]+: { id: value } },
      },
    },
    withNodes(value):: self {
      data+: {
        kubernetes_nodes+: { [terraformName]+: { nodes: value } },
      },
    },
  },
}
