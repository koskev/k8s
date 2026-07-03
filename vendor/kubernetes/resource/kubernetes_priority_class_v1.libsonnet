{
  new(terraformName, value):: {
    _type:: 'tf',
    resource+: {
      kubernetes_priority_class_v1+: { [terraformName]+: {
        value: value,
      } },
    },
    withGlobalDefault(value):: self {
      resource+: {
        kubernetes_priority_class_v1+: { [terraformName]+: { global_default: value } },
      },
    },
    withPreemptionPolicy(value):: self {
      resource+: {
        kubernetes_priority_class_v1+: { [terraformName]+: { preemption_policy: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_priority_class_v1+: { [terraformName]+: { id: value } },
      },
    },
    withValue(value):: self {
      resource+: {
        kubernetes_priority_class_v1+: { [terraformName]+: { value: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        kubernetes_priority_class_v1+: { [terraformName]+: { description: value } },
      },
    },
  },
}
