{
  '#new':: { 'function': { help: |||
    This data source provides a mechanism for listing the names of all available namespaces in a Kubernetes cluster. It can be used to check for existence of a specific namespaces or to apply another resource to all or a subset of existing namespaces in a cluster.In Kubernetes, namespaces provide a scope for names and are intended as a way to divide cluster resources between multiple users.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_all_namespaces+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_all_namespaces.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespaces':: { 'function': { help: |||
        List of all namespaces in a cluster.
      ||| } },
      namespaces(suffix=''):: refSelf.plain('.namespaces%s' % suffix),
    },
  },
}
