{
  new(terraformName, policies, entity_id):: {
    _type:: 'tf',
    resource+: {
      vault_identity_entity_policies+: { [terraformName]+: {
        policies: policies,
        entity_id: entity_id,
      } },
    },
    withPolicies(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { policies: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { namespace: value } },
      },
    },
    withExclusive(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { exclusive: value } },
      },
    },
    withEntityId(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { entity_id: value } },
      },
    },
    withEntityName(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { entity_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { id: value } },
      },
    },
  },
}
