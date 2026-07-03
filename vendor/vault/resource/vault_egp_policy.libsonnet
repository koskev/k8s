{
  new(terraformName, paths, policy, name, enforcement_level):: {
    _type:: 'tf',
    resource+: {
      vault_egp_policy+: { [terraformName]+: {
        paths: paths,
        policy: policy,
        name: name,
        enforcement_level: enforcement_level,
      } },
    },
    withPaths(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { paths: value } },
      },
    },
    withPolicy(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { policy: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { id: value } },
      },
    },
    withEnforcementLevel(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { enforcement_level: value } },
      },
    },
  },
}
