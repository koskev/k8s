{
  new(terraformName, value):: {
    _type:: 'tf',
    resource+: {
      kubernetes_priority_class+: { [terraformName]+: {
        value: value,
      } },
    },
    withValue(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { value: value } },
      },
    },
    withPreemptionPolicy(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { preemption_policy: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { id: value } },
      },
    },
    withGlobalDefault(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { global_default: value } },
      },
    },
  },
}
