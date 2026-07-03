{
new(terraformName, group_id):: {
_type:: 'tf',
resource+: {
vault_identity_group_member_entity_ids+: { [terraformName]+: {
'group_id': group_id,
}}},
'#withExclusive': { 'function': { help: |||
 If set to true, allows the resource to manage member entity ids
exclusively. Beware of race conditions when disabling exclusive management 
||| } },
withExclusive(value):: self {
resource+: {
            vault_identity_group_member_entity_ids+: { [terraformName]+: { 'exclusive': value } },
        },
},
'#withGroupId': { 'function': { help: |||
 ID of the group. 
||| } },
withGroupId(value):: self {
resource+: {
            vault_identity_group_member_entity_ids+: { [terraformName]+: { 'group_id': value } },
        },
},
withId(value):: self {
resource+: {
            vault_identity_group_member_entity_ids+: { [terraformName]+: { 'id': value } },
        },
},
'#withMemberEntityIds': { 'function': { help: |||
 Entity IDs to be assigned as group members. 
||| } },
withMemberEntityIds(value):: self {
resource+: {
            vault_identity_group_member_entity_ids+: { [terraformName]+: { 'member_entity_ids': value } },
        },
},
'#withNamespace': { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
resource+: {
            vault_identity_group_member_entity_ids+: { [terraformName]+: { 'namespace': value } },
        },
},
},
}