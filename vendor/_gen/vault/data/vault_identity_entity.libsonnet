{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_identity_entity+: { [terraformName]+: {
      } },
    },
    '#withAliasId': { 'function': { help: |||
      ID of the alias. 
    ||| } },
    withAliasId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_id: value } },
      },
    },
    '#withAliasMountAccessor': { 'function': { help: |||
      Accessor of the mount to which the alias belongs to. This should be supplied in conjunction with `alias_name`. 
    ||| } },
    withAliasMountAccessor(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_mount_accessor: value } },
      },
    },
    '#withAliasName': { 'function': { help: |||
      Name of the alias. This should be supplied in conjunction with `alias_mount_accessor`. 
    ||| } },
    withAliasName(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_name: value } },
      },
    },
    withAliases(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { aliases: value } },
      },
    },
    withCreationTime(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { creation_time: value } },
      },
    },
    '#withDataJson': { 'function': { help: |||
      Entity data from Vault in JSON String form 
    ||| } },
    withDataJson(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { data_json: value } },
      },
    },
    withDirectGroupIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { direct_group_ids: value } },
      },
    },
    withDisabled(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { disabled: value } },
      },
    },
    '#withEntityId': { 'function': { help: |||
      ID of the entity. 
    ||| } },
    withEntityId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { entity_id: value } },
      },
    },
    '#withEntityName': { 'function': { help: |||
      Name of the entity. 
    ||| } },
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
    withId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { id: value } },
      },
    },
    withInheritedGroupIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { inherited_group_ids: value } },
      },
    },
    withLastUpdateTime(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { last_update_time: value } },
      },
    },
    withMergedEntityIds(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { merged_entity_ids: value } },
      },
    },
    withMetadata(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
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
    withPolicies(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { policies: value } },
      },
    },
  },
}
