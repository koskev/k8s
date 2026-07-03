{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_horizontal_pod_autoscaler+: { [terraformName]+: { id: value } },
      },
    },
  },
}
