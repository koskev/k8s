{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_node_taint+: { [terraformName]+: {
      } },
    },
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
}
