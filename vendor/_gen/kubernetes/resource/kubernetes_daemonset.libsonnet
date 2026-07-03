{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_daemonset+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_daemonset+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForRollout':: { 'function': { help: |||
      Wait for the rollout of the deployment to complete. Defaults to true. 
    ||| } },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_daemonset+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
  },
}
