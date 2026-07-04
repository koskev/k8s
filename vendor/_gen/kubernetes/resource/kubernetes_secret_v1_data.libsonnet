{
  local outerSelf = self,
  new(terraformName, data):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_secret_v1_data+: {
        [terraformName]+: {
          data: data,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withData':: { 'function': { help: |||
      Data to be stored in the Kubernetes Secret.
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    '#withFieldManager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_secret_v1_data.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Data to be stored in the Kubernetes Secret.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#field_manager':: { 'function': { help: |||
        Set the name of the field manager for the specified labels
      ||| } },
      field_manager(suffix=''):: refSelf.plain('.field_manager%s' % suffix),
      '#force':: { 'function': { help: |||
        Flag to force updates to the Kubernetes Secret.
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
