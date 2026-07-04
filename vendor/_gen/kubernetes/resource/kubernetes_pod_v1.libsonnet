{
  '#new':: { 'function': { help: |||
    A pod is a group of one or more containers, the shared storage for those containers, and options about how to run the containers. Pods are always co-located and co-scheduled, and run in a shared context. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod/.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_pod_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_pod_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withTargetState':: { 'function': { help: |||
      A list of the pod phases that indicate whether it was successfully created. Options: "Pending", "Running", "Succeeded", "Failed", "Unknown". Default: "Running". More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-phase
    ||| } },
    withTargetState(value):: self {
      resource+: {
        kubernetes_pod_v1+: { [terraformName]+: { target_state: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_pod_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#target_state':: { 'function': { help: |||
        A list of the pod phases that indicate whether it was successfully created. Options: "Pending", "Running", "Succeeded", "Failed", "Unknown". Default: "Running". More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-phase
      ||| } },
      target_state(suffix=''):: refSelf.plain('.target_state%s' % suffix),
    },
  },
}
