{
  new(terraformName, value):: {
    _type:: 'tf',
    resource+: {
      kubernetes_priority_class+: { [terraformName]+: {
        value: value,
      } },
    },
    '#withDescription': { 'function': { help: |||
      An arbitrary string that usually provides guidelines on when this priority class should be used. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { description: value } },
      },
    },
    '#withGlobalDefault': { 'function': { help: |||
      Specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority. 
    ||| } },
    withGlobalDefault(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { global_default: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { id: value } },
      },
    },
    '#withPreemptionPolicy': { 'function': { help: |||
      PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. 
    ||| } },
    withPreemptionPolicy(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { preemption_policy: value } },
      },
    },
    '#withValue': { 'function': { help: |||
      The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec. 
    ||| } },
    withValue(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { value: value } },
      },
    },
  },
}
