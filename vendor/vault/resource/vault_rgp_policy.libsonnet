{
  new(terraformName, name, enforcement_level, policy):: {
    _type:: 'tf',
    resource+: {
      vault_rgp_policy+: { [terraformName]+: {
        name: name,
        enforcement_level: enforcement_level,
        policy: policy,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { name: value } },
      },
    },
    withEnforcementLevel(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { enforcement_level: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    withPolicy(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
}
