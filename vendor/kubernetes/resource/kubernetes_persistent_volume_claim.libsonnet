{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume_claim+: { [terraformName]+: {
      } },
    },
    withWaitUntilBound(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { wait_until_bound: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { id: value } },
      },
    },
  },
}
