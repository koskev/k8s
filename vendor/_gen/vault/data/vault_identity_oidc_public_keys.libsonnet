{
  new(terraformName, name):: {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_public_keys+: { [terraformName]+: {
        name: name,
      } },
    },
    withId(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeys': { 'function': { help: |||
      The public portion of keys for an OIDC provider. Clients can use them to validate the authenticity of an identity token. 
    ||| } },
    withKeys(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { keys: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the provider. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
