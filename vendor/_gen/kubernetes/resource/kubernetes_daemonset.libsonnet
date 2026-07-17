{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        A DaemonSet ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected. Deleting a DaemonSet will clean up the Pods it created.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_daemonset+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { id: value } },
    } },
    '#withWaitForRollout':: { 'function': {
      help:
        |||
          Wait for the rollout of the deployment to complete. Defaults to true.
        |||,
    } },
    withWaitForRollout(value):: self { resource+: {
      kubernetes_daemonset+: { [terraformName]+: { wait_for_rollout: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_daemonset.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_for_rollout':: { 'function': {
        help:
          |||
            Wait for the rollout of the deployment to complete. Defaults to true.
          |||,
      } },
      wait_for_rollout(suffix=''):: refSelf.plain('.wait_for_rollout%s' % suffix),

    },

  },

}
