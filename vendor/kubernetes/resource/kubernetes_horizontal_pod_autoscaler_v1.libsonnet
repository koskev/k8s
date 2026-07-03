{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_horizontal_pod_autoscaler_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_horizontal_pod_autoscaler_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
