{
  new(terraformName, data):: {
    _type:: 'tf',
    resource+: {
      kubernetes_secret_v1_data+: { [terraformName]+: {
        data: data,
      } },
    },
    '#withData': { 'function': { help: |||
      Data to be stored in the Kubernetes Secret. 
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    '#withFieldManager': { 'function': { help: |||
      Set the name of the field manager for the specified labels 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce': { 'function': { help: |||
      Flag to force updates to the Kubernetes Secret. 
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { id: value } },
      },
    },
  },
}
