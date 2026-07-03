{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_deployment_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_deployment_v1+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_deployment_v1+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
  },
}
