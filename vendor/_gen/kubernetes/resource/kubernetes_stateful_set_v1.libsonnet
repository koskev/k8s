{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_stateful_set_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_stateful_set_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForRollout':: { 'function': { help: |||
      Wait for the rollout of the stateful set to complete. Defaults to true. 
    ||| } },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_stateful_set_v1+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
  },
}
