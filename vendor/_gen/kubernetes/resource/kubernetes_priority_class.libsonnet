{
  '#new':: { 'function': { help: |||
    A PriorityClass is a non-namespaced object that defines a mapping from a priority class name to the integer value of the priority.
  ||| } },
  local outerSelf = self,
  new(terraformName, value):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_priority_class+: {
        [terraformName]+: {
          value: value,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDescription':: { 'function': { help: |||
      An arbitrary string that usually provides guidelines on when this priority class should be used.
    ||| } },
    withDescription(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { description: value } },
      },
    },
    '#withGlobalDefault':: { 'function': { help: |||
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
    '#withPreemptionPolicy':: { 'function': { help: |||
      PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
    ||| } },
    withPreemptionPolicy(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { preemption_policy: value } },
      },
    },
    '#withValue':: { 'function': { help: |||
      The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
    ||| } },
    withValue(value):: self {
      resource+: {
        kubernetes_priority_class+: { [terraformName]+: { value: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_priority_class.%s%s }' % [terraformName, suffix],
    fields:: {
      '#description':: { 'function': { help: |||
        An arbitrary string that usually provides guidelines on when this priority class should be used.
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#global_default':: { 'function': { help: |||
        Specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
      ||| } },
      global_default(suffix=''):: refSelf.plain('.global_default%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#preemption_policy':: { 'function': { help: |||
        PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
      ||| } },
      preemption_policy(suffix=''):: refSelf.plain('.preemption_policy%s' % suffix),
      '#value':: { 'function': { help: |||
        The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
      ||| } },
      value(suffix=''):: refSelf.plain('.value%s' % suffix),
    },
  },
}
