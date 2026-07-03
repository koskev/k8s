{
new(terraformName, group_id):: {
_type:: 'tf',
resource+: {
vault_identity_group_member_group_ids+: { [terraformName]+: {
'group_id': group_id,
}}},
'#withExclusive': { 'function': { help: |||
 If set to true, allows the resource to manage member group ids
exclusively. Beware of race conditions when disabling exclusive management 
||| } },
withExclusive(value):: self {
resource+: {
            vault_identity_group_member_group_ids+: { [terraformName]+: { 'exclusive': value } },
        },
},
'#withGroupId': { 'function': { help: |||
 ID of the group. 
||| } },
withGroupId(value):: self {
resource+: {
            vault_identity_group_member_group_ids+: { [terraformName]+: { 'group_id': value } },
        },
},
withId(value):: self {
resource+: {
            vault_identity_group_member_group_ids+: { [terraformName]+: { 'id': value } },
        },
},
'#withMemberGroupIds': { 'function': { help: |||
 Group IDs to be assigned as group members. 
||| } },
withMemberGroupIds(value):: self {
resource+: {
            vault_identity_group_member_group_ids+: { [terraformName]+: { 'member_group_ids': value } },
        },
},
'#withNamespace': { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
resource+: {
            vault_identity_group_member_group_ids+: { [terraformName]+: { 'namespace': value } },
        },
},
},
}