{
  new(terraformName, handler):: {
    _type:: 'tf',
    resource+: {
      kubernetes_runtime_class_v1+: { [terraformName]+: {
        handler: handler,
      } },
    },
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
}
