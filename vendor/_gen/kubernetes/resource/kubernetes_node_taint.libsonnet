{
  '#new':: { 'function': { help: |||
    [Node affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) is a property of Pods that attracts them to a set of [nodes](https://kubernetes.io/docs/concepts/architecture/nodes/) (either as a preference or a hard requirement). Taints are the opposite -- they allow a node to repel a set of pods.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_node_taint+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withFieldManager':: { 'function': { help: |||
      Set the name of the field manager for the node taint
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_node_taint+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
      Force overwriting annotations that were created or edited outside of Terraform.
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_node_taint+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_node_taint+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_node_taint.%s%s }' % [terraformName, suffix],
    fields:: {
      '#field_manager':: { 'function': { help: |||
        Set the name of the field manager for the node taint
      ||| } },
      field_manager(suffix=''):: refSelf.plain('.field_manager%s' % suffix),
      '#force':: { 'function': { help: |||
        Force overwriting annotations that were created or edited outside of Terraform.
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
