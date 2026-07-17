{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        This data source provides a mechanism to query attributes of any specific namespace within a Kubernetes cluster. In Kubernetes, namespaces provide a scope for names and are intended as a way to divide cluster resources between multiple users.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      kubernetes_namespace+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      kubernetes_namespace+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_namespace.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#spec':: { 'function': {
        help:
          |||
            Spec defines the behavior of the Namespace.
          |||,
      } },
      spec(suffix=''):: refSelf.plain('.spec%s' % suffix),

    },

  },

}
