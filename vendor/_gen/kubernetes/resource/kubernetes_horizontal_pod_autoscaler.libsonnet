{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Horizontal Pod Autoscaler automatically scales the number of pods in a replication controller, deployment or replica set based on observed CPU utilization.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_horizontal_pod_autoscaler.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
