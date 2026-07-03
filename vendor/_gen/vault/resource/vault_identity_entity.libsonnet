{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_identity_entity+: { [terraformName]+: {
      } },
    },
    '#withDisabled': { 'function': { help: |||
      Whether the entity is disabled. Disabled entities' associated tokens cannot be used, but are not revoked. 
    ||| } },
    withDisabled(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { disabled: value } },
      },
    },
    '#withExternalPolicies': { 'function': { help: |||
      Manage policies externally through `vault_identity_entity_policies`. 
    ||| } },
    withExternalPolicies(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { external_policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata': { 'function': { help: |||
      Metadata to be associated with the entity. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the entity. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Policies to be tied to the entity. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_entity+: { [terraformName]+: { policies: value } },
      },
    },
  },
}
