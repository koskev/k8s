{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_pod_disruption_budget+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_pod_disruption_budget+: { [terraformName]+: { id: value } },
      },
    },
  },
}
