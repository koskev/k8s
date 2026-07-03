{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_daemon_set_v1+: { [terraformName]+: {
      } },
    },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_daemon_set_v1+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_daemon_set_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
