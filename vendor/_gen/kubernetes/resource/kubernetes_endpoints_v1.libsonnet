{
  '#new':: { 'function': { help: |||
    An Endpoints resource is an abstraction, linked to a Service, which defines the list of endpoints that actually implement the service.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_endpoints_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_endpoints_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_endpoints_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
