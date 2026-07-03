{
  new(terraformName, group_id):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group_member_entity_ids+: { [terraformName]+: {
        group_id: group_id,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { namespace: value } },
      },
    },
    withExclusive(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { exclusive: value } },
      },
    },
    withMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
    withGroupId(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { group_id: value } },
      },
    },
  },
}
