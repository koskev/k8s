{
  new(terraformName, enforcement_level, name, paths, policy):: {
    _type:: 'tf',
    resource+: {
      vault_egp_policy+: { [terraformName]+: {
        enforcement_level: enforcement_level,
        name: name,
        paths: paths,
        policy: policy,
      } },
    },
    '#withEnforcementLevel': { 'function': { help: |||
      Enforcement level of Sentinel policy. Can be one of: 'advisory', 'soft-mandatory' or 'hard-mandatory' 
    ||| } },
    withEnforcementLevel(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { enforcement_level: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the policy 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPaths': { 'function': { help: |||
      List of paths to which the policy will be applied 
    ||| } },
    withPaths(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { paths: value } },
      },
    },
    '#withPolicy': { 'function': { help: |||
      The policy document 
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_egp_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
}
