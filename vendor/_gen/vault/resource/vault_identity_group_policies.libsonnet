{
  new(terraformName, group_id, policies):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group_policies+: { [terraformName]+: {
        group_id: group_id,
        policies: policies,
      } },
    },
    '#withExclusive':: { 'function': { help: |||
      Should the resource manage policies exclusively? Beware of race conditions when disabling exclusive management 
    ||| } },
    withExclusive(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { exclusive: value } },
      },
    },
    '#withGroupId':: { 'function': { help: |||
      ID of the group. 
    ||| } },
    withGroupId(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { group_id: value } },
      },
    },
    '#withGroupName':: { 'function': { help: |||
      Name of the group. 
    ||| } },
    withGroupName(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { group_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to be tied to the group. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { policies: value } },
      },
    },
  },
}
