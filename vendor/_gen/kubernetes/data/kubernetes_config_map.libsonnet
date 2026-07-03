{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      kubernetes_config_map+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_config_map+: { [terraformName]+: { id: value } },
      },
    },
    '#withImmutable':: { 'function': { help: |||
      Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil. 
    ||| } },
    withImmutable(value):: self {
      data+: {
        kubernetes_config_map+: { [terraformName]+: { immutable: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_config_map.%s%s }' % [terraformName, suffix],
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
