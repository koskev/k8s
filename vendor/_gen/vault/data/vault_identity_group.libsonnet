{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_identity_group+: { [terraformName]+: {
      } },
    },
    withAliasCanonicalId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_canonical_id: value } },
      },
    },
    withAliasCreationTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_creation_time: value } },
      },
    },
    '#withAliasId':: { 'function': { help: |||
      ID of the alias. 
    ||| } },
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
    withAliasMergedFromCanonicalIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_merged_from_canonical_ids: value } },
      },
    },
    withAliasMetadata(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAliasMountAccessor':: { 'function': { help: |||
      Accessor of the mount to which the alias belongs to. This should be supplied in conjunction with `alias_name`. 
    ||| } },
    withAliasMountAccessor(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_accessor: value } },
      },
    },
    withAliasMountPath(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_path: value } },
      },
    },
    withAliasMountType(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_type: value } },
      },
    },
    '#withAliasName':: { 'function': { help: |||
      Name of the alias. This should be supplied in conjunction with `alias_mount_accessor`. 
    ||| } },
    withAliasName(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_name: value } },
      },
    },
    withCreationTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { creation_time: value } },
      },
    },
    '#withDataJson':: { 'function': { help: |||
      Group data from Vault in JSON String form 
    ||| } },
    withDataJson(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withGroupId':: { 'function': { help: |||
      ID of the group. 
    ||| } },
    withGroupId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { group_id: value } },
      },
    },
    '#withGroupName':: { 'function': { help: |||
      Name of the group. 
    ||| } },
    withGroupName(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { group_name: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { id: value } },
      },
    },
    withLastUpdateTime(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { last_update_time: value } },
      },
    },
    withMemberEntityIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
    withMemberGroupIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { member_group_ids: value } },
      },
    },
    withMetadata(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { metadata: value } },
      },
    },
    withModifyIndex(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { modify_index: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { namespace: value } },
      },
    },
    withNamespaceId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withParentGroupIds(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { parent_group_ids: value } },
      },
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
  },
}
