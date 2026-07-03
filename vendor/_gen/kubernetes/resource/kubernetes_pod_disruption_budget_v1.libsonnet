{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_pod_disruption_budget_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_pod_disruption_budget_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
