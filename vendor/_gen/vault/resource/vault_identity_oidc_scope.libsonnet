{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_scope+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withDescription': { 'function': { help: |||
      The scope's description. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the scope. The openid scope name is reserved. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTemplate': { 'function': { help: |||
      The template string for the scope. This may be provided as escaped JSON or base64 encoded JSON. 
    ||| } },
    withTemplate(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { template: value } },
      },
    },
  },
}
