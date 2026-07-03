{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group+: { [terraformName]+: {
      } },
    },
    '#withExternalMemberEntityIds': { 'function': { help: |||
      Manage member entities externally through `vault_identity_group_member_entity_ids` 
    ||| } },
    withExternalMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_member_entity_ids: value } },
      },
    },
    '#withExternalMemberGroupIds': { 'function': { help: |||
      Manage member groups externally through `vault_identity_group_member_group_ids` 
    ||| } },
    withExternalMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_member_group_ids: value } },
      },
    },
    '#withExternalPolicies': { 'function': { help: |||
      Manage policies externally through `vault_identity_group_policies`, allows using group ID in assigned policies. 
    ||| } },
    withExternalPolicies(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { id: value } },
      },
    },
    '#withMemberEntityIds': { 'function': { help: |||
      Entity IDs to be assigned as group members. 
    ||| } },
    withMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
    '#withMemberGroupIds': { 'function': { help: |||
      Group IDs to be assigned as group members. 
    ||| } },
    withMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { member_group_ids: value } },
      },
    },
    '#withMetadata': { 'function': { help: |||
      Metadata to be associated with the group. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the group. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Policies to be tied to the group. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { policies: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of the group, internal or external. Defaults to internal. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { type: value } },
      },
    },
  },
}
