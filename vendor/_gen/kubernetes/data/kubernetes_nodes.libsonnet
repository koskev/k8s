{
  '#new':: { 'function': { help: |||
    This data source provides a mechanism for listing the names of nodes in a kubernetes cluster.By default, all nodes in the cluster are returned, but queries by node label are also supported. It can be used to check for the existence of a specific node or to lookup a node to apply a taint with the `kubernetes_node_taint` resource.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_nodes+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_nodes+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_nodes.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#nodes':: { 'function': { help: |||
        List of nodes in a cluster.
      ||| } },
      nodes(suffix=''):: refSelf.plain('.nodes%s' % suffix),
    },
  },
}
