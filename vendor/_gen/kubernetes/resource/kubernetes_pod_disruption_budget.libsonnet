{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        A Pod Disruption Budget limits the number of pods of a replicated application that are down simultaneously from voluntary disruptions. For example, a quorum-based application would like to ensure that the number of replicas running is never brought below the number needed for a quorum. A web front end might want to ensure that the number of replicas serving load never falls below a certain percentage of the total.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_pod_disruption_budget.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
