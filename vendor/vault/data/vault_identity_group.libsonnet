{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_identity_group+: { [terraformName]+: {
      } },
    },
    withPolicies(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { policies: value } },
      },
    },
    withType(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { type: value } },
      },
    },
    withAliasMountPath(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_path: value } },
      },
    },
    withDataJson(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { data_json: value } },
      },
    },
    withAliasMergedFromCanonicalIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_merged_from_canonical_ids: value } },
      },
    },
    withMemberGroupIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { member_group_ids: value } },
      },
    },
    withAliasCanonicalId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_canonical_id: value } },
      },
    },
    withAliasName(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_name: value } },
      },
    },
    withGroupId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { group_id: value } },
      },
    },
    withAliasMetadata(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withModifyIndex(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { modify_index: value } },
      },
    },
    withAliasCreationTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_creation_time: value } },
      },
    },
    withMetadata(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { metadata: value } },
      },
    },
    withNamespaceId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { namespace: value } },
      },
    },
    withGroupName(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { group_name: value } },
      },
    },
    withAliasMountType(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_type: value } },
      },
    },
    withCreationTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { creation_time: value } },
      },
    },
    withAliasId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_id: value } },
      },
    },
    withAliasLastUpdateTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_last_update_time: value } },
      },
    },
    withAliasMountAccessor(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_accessor: value } },
      },
    },
    withLastUpdateTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { last_update_time: value } },
      },
    },
    withParentGroupIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { parent_group_ids: value } },
      },
    },
    withMemberEntityIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
  },
}
