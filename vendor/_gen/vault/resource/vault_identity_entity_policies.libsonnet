{
  new(terraformName, entity_id, policies):: {
    _type:: 'tf',
    resource+: {
      vault_identity_entity_policies+: { [terraformName]+: {
        entity_id: entity_id,
        policies: policies,
      } },
    },
    '#withEntityId':: { 'function': { help: |||
      ID of the entity. 
    ||| } },
    withEntityId(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { entity_id: value } },
      },
    },
    '#withEntityName':: { 'function': { help: |||
      Name of the entity. 
    ||| } },
    withEntityName(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { entity_name: value } },
      },
    },
    '#withExclusive':: { 'function': { help: |||
      Should the resource manage policies exclusively 
    ||| } },
    withExclusive(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { exclusive: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to be tied to the entity. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_entity_policies+: { [terraformName]+: { policies: value } },
      },
    },
  },
}
