{
  new(terraformName, handler):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_runtime_class_v1+: {
        [terraformName]+: {
          handler: handler,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withHandler':: { 'function': { help: |||
      Specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class 
    ||| } },
    withHandler(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { handler: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_runtime_class_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#handler':: { 'function': { help: |||
        Specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class 
      ||| } },
      handler(suffix=''):: refSelf.plain('.handler%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
