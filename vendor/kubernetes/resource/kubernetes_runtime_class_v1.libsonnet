{
  new(terraformName, handler):: {
    _type:: 'tf',
    resource+: {
      kubernetes_runtime_class_v1+: { [terraformName]+: {
        handler: handler,
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { id: value } },
      },
    },
    withHandler(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { handler: value } },
      },
    },
  },
}
