{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_pod+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_pod+: { [terraformName]+: { id: value } },
      },
    },
    '#withTargetState':: { 'function': { help: |||
      A list of the pod phases that indicate whether it was successfully created. Options: "Pending", "Running", "Succeeded", "Failed", "Unknown". Default: "Running". More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-phase 
    ||| } },
    withTargetState(value):: self {
      resource+: {
        kubernetes_pod+: { [terraformName]+: { target_state: value } },
      },
    },
  },
}
