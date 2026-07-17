{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        An API Service is an abstraction which defines for locating and communicating with servers.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_api_service+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_api_service+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_api_service.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
