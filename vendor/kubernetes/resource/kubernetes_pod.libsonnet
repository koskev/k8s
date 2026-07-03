{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_pod+: { [terraformName]+: {
      } },
    },
    withTargetState(value):: self {
      resource+: {
        kubernetes_pod+: { [terraformName]+: { target_state: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_pod+: { [terraformName]+: { id: value } },
      },
    },
  },
}
