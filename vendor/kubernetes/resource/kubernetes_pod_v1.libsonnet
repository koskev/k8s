{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_pod_v1+: { [terraformName]+: {
      } },
    },
    withTargetState(value):: self {
      resource+: {
        kubernetes_pod_v1+: { [terraformName]+: { target_state: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_pod_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
