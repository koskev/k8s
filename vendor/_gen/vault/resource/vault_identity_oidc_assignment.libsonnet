{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_assignment+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withEntityIds': { 'function': { help: |||
      A list of Vault entity IDs. 
    ||| } },
    withEntityIds(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { entity_ids: value } },
      },
    },
    '#withGroupIds': { 'function': { help: |||
      A list of Vault group IDs. 
    ||| } },
    withGroupIds(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { group_ids: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the assignment. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
