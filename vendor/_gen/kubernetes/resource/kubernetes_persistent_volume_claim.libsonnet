{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume_claim+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitUntilBound': { 'function': { help: |||
      Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space) 
    ||| } },
    withWaitUntilBound(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { wait_until_bound: value } },
      },
    },
  },
}
