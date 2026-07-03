{
  new(terraformName, group_id, policies):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group_policies+: { [terraformName]+: {
        group_id: group_id,
        policies: policies,
      } },
    },
    withExclusive(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { exclusive: value } },
      },
    },
    withGroupId(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { group_id: value } },
      },
    },
    withGroupName(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { group_name: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { policies: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_policies+: { [terraformName]+: { id: value } },
      },
    },
  },
}
