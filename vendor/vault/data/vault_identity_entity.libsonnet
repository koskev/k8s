{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_identity_entity+: { [terraformName]+: {
      } },
    },
    withLastUpdateTime(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { last_update_time: value } },
      },
    },
    withPolicies(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { policies: value } },
      },
    },
    withInheritedGroupIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { inherited_group_ids: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { id: value } },
      },
    },
    withAliasMountAccessor(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_mount_accessor: value } },
      },
    },
    withEntityId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { entity_id: value } },
      },
    },
    withMergedEntityIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { merged_entity_ids: value } },
      },
    },
    withDisabled(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { disabled: value } },
      },
    },
    withDirectGroupIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { direct_group_ids: value } },
      },
    },
    withDataJson(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { data_json: value } },
      },
    },
    withMetadata(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { metadata: value } },
      },
    },
    withCreationTime(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { creation_time: value } },
      },
    },
    withAliasName(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_name: value } },
      },
    },
    withEntityName(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { entity_name: value } },
      },
    },
    withGroupIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { group_ids: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { namespace: value } },
      },
    },
    withNamespaceId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withAliases(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { aliases: value } },
      },
    },
    withAliasId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_id: value } },
      },
    },
  },
}
