{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        A role contains rules that represent a set of permissions. Permissions are purely additive (there are no “deny” rules).
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_role+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_role+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_role.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
