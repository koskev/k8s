{
  new(terraformName, spec):: {
    _type:: 'tf',
    resource+: {
      kubernetes_validating_admission_policy_v1+: { [terraformName]+: {
        spec: spec,
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { id: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { metadata: value } },
      },
    },
    withSpec(value):: self {
      resource+: {
        kubernetes_validating_admission_policy_v1+: { [terraformName]+: { spec: value } },
      },
    },
  },
}
