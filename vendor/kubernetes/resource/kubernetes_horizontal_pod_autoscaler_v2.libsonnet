{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_horizontal_pod_autoscaler_v2+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_horizontal_pod_autoscaler_v2+: { [terraformName]+: { id: value } },
      },
    },
  },
}
