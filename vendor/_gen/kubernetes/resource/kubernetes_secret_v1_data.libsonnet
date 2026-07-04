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
    withForEach(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { providers: value } },
      },
    },
    '#data':: { 'function': { help: |||
      Data to be stored in the Kubernetes Secret.
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    '#field_manager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#force':: { 'function': { help: |||
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
