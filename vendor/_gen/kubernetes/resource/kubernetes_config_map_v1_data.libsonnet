{
  '#new':: { 'function': { help: |||
    This resource allows Terraform to manage data within a pre-existing ConfigMap. This resource uses [field management](https://kubernetes.io/docs/reference/using-api/server-side-apply/#field-management) and [server-side apply](https://kubernetes.io/docs/reference/using-api/server-side-apply/) to manage only the data that is defined in the Terraform configuration. Existing data not specified in the configuration will be ignored. If data specified in the config and is already managed by another client it will cause a conflict which can be overridden by setting `force` to true.
  ||| } },
  local outerSelf = self,
  new(terraformName, data):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
    withForEach(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { providers: value } },
      },
    },
    '#data':: { 'function': { help: |||
      The data we want to add to the ConfigMap.
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    '#field_manager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels.
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_config_map_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#force':: { 'function': { help: |||
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
