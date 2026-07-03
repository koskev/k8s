{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_deployment+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_deployment+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_deployment+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
  },
}
