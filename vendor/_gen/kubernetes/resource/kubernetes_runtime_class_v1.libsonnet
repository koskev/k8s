{
  '#new':: { 'function': { help: |||
    A runtime class is used to determine which container runtime is used to run all containers in a pod.
  ||| } },
  local outerSelf = self,
  new(terraformName, handler):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
    withForEach(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_runtime_class_v1+: { [terraformName]+: { providers: value } },
      },
    },
    '#handler':: { 'function': { help: |||
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
