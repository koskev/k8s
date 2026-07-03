{
  new(terraformName, spec):: {
    _type:: 'tf',
    resource+: {
      kubernetes_validating_admission_policy_v1+: { [terraformName]+: {
        spec: spec,
      } },
    },
    '#withId': { 'function': { help: |||
      The unique ID for this terraform resource 
    ||| } },
    withId(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata': { 'function': { help: |||
      Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withSpec': { 'function': { help: |||
      Rule defining a set of permissions for the role 
    ||| } },
    withSpec(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { spec: value } },
      },
    },
  },
}
