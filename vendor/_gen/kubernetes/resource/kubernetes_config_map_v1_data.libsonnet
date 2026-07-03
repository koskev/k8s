{
  new(terraformName, data):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_config_map_v1_data+: {
        [terraformName]+: {
          data: data,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withData':: { 'function': { help: |||
      The data we want to add to the ConfigMap. 
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    '#withFieldManager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels. 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_config_map_v1_data.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        The data we want to add to the ConfigMap. 
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#field_manager':: { 'function': { help: |||
        Set the name of the field manager for the specified labels. 
      ||| } },
      field_manager(suffix=''):: refSelf.plain('.field_manager%s' % suffix),
      '#force':: { 'function': { help: |||
        Force overwriting data that is managed outside of Terraform. 
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
