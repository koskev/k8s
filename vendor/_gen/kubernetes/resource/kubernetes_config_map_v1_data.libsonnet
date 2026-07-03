{
  new(terraformName, data):: {
    _type:: 'tf',
    resource+: {
      kubernetes_config_map_v1_data+: { [terraformName]+: {
        data: data,
      } },
    },
    '#withData': { 'function': { help: |||
      The data we want to add to the ConfigMap. 
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    '#withFieldManager': { 'function': { help: |||
      Set the name of the field manager for the specified labels. 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce': { 'function': { help: |||
      Force overwriting data that is managed outside of Terraform. 
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { id: value } },
      },
    },
  },
}
