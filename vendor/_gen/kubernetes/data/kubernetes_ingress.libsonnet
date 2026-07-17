{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc. This data source allows you to pull data about such ingress.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      kubernetes_ingress+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      kubernetes_ingress+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_ingress.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#spec':: { 'function': {
        help:
          |||
            spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
          |||,
      } },
      spec(suffix=''):: refSelf.plain('.spec%s' % suffix),
      status(suffix=''):: refSelf.plain('.status%s' % suffix),

    },

  },

}
