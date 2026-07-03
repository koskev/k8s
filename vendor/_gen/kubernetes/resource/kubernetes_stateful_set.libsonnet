{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_stateful_set+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_stateful_set+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForRollout':: { 'function': { help: |||
      Wait for the rollout of the stateful set to complete. Defaults to true. 
    ||| } },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_stateful_set+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
  },
}
