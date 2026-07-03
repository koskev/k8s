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
    '#withNodes': { 'function': { help: |||
      List of nodes in a cluster. 
    ||| } },
    withNodes(value):: self {
      data+: {
        kubernetes_nodes+: { [terraformName]+: { nodes: value } },
      },
    },
  },
}
