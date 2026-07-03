{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group+: { [terraformName]+: {
      } },
    },
    withName(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { name: value } },
      },
    },
    withExternalMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_member_entity_ids: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { id: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { policies: value } },
      },
    },
    withExternalMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_member_group_ids: value } },
      },
    },
    withMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
    withExternalPolicies(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_policies: value } },
      },
    },
    withMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { member_group_ids: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { type: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { metadata: value } },
      },
    },
  },
}
