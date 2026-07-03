{
  new(terraformName, group_id):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: {
        group_id: group_id,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_member_group_ids+: { [terraformName]+: { id: value } },
      },
    },
    withGroupId(value):: self {
      resource+: {
        vault_identity_group_member_group_ids+: { [terraformName]+: { group_id: value } },
      },
    },
    withExclusive(value):: self {
      resource+: {
        vault_identity_group_member_group_ids+: { [terraformName]+: { exclusive: value } },
      },
    },
    withMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group_member_group_ids+: { [terraformName]+: { member_group_ids: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_member_group_ids+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
