{
  '#new':: { 'function': { help: |||
    Validating Admission Policy Resource
  ||| } },
  local outerSelf = self,
  new(terraformName, spec):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_validating_admission_policy_v1+: {
        [terraformName]+: {
          spec: spec,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withId':: { 'function': { help: |||
      The unique ID for this terraform resource
    ||| } },
    withId(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    ||| } },
    withMetadata(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withSpec':: { 'function': { help: |||
      Rule defining a set of permissions for the role
    ||| } },
    withSpec(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { spec: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_validating_admission_policy_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#id':: { 'function': { help: |||
        The unique ID for this terraform resource
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#spec':: { 'function': { help: |||
        Rule defining a set of permissions for the role
      ||| } },
      spec(suffix=''):: refSelf.plain('.spec%s' % suffix),
    },
  },
}
