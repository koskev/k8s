{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_daemonset+: { [terraformName]+: {
      } },
    },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_daemonset+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_daemonset+: { [terraformName]+: { id: value } },
      },
    },
  },
}
