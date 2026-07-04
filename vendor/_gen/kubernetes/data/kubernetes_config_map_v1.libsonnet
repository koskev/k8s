{
  '#new':: { 'function': { help: |||
    Config Maps are key-value pairs containing configuration data. The Config Map data source provides a mechanism for extracting these key-value pairs.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_config_map_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#immutable':: { 'function': { help: |||
      Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
    ||| } },
    withImmutable(value):: self {
      data+: {
        kubernetes_config_map_v1+: { [terraformName]+: { immutable: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_config_map_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#binary_data':: { 'function': { help: |||
        A map of the config map binary data.
      ||| } },
      binary_data(suffix=''):: refSelf.plain('.binary_data%s' % suffix),
      '#data':: { 'function': { help: |||
        A map of the config map data.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#immutable':: { 'function': { help: |||
        Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
      ||| } },
      immutable(suffix=''):: refSelf.plain('.immutable%s' % suffix),
    },
  },
}
