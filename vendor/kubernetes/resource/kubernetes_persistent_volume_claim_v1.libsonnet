{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { id: value } },
      },
    },
    withWaitUntilBound(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { wait_until_bound: value } },
      },
    },
  },
}
