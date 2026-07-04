{
  '#new':: { 'function': { help: |||
    This data source provides a mechanism to query attributes of any specific namespace within a Kubernetes cluster. In Kubernetes, namespaces provide a scope for names and are intended as a way to divide cluster resources between multiple users.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_namespace_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_namespace_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_namespace_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#spec':: { 'function': { help: |||
        Spec defines the behavior of the Namespace.
      ||| } },
      spec(suffix=''):: refSelf.plain('.spec%s' % suffix),
    },
  },
}
