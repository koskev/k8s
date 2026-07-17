{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        A resource quota provides constraints that limit aggregate resource consumption per namespace. It can limit the quantity of objects that can be created in a namespace by type, as well as the total amount of compute resources that may be consumed by resources in that project.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_resource_quota+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_resource_quota+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_resource_quota.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
