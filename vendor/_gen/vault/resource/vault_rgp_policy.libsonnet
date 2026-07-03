{
  new(terraformName, enforcement_level, name, policy):: {
    _type:: 'tf',
    resource+: {
      vault_rgp_policy+: { [terraformName]+: {
        enforcement_level: enforcement_level,
        name: name,
        policy: policy,
      } },
    },
    '#withEnforcementLevel':: { 'function': { help: |||
      Enforcement level of Sentinel policy. Can be one of: 'advisory', 'soft-mandatory' or 'hard-mandatory' 
    ||| } },
    withEnforcementLevel(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { enforcement_level: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the policy 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicy':: { 'function': { help: |||
      The policy document 
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
}
