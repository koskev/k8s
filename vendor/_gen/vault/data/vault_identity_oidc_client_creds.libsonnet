{
  new(terraformName, name):: {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_client_creds+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withClientId': { 'function': { help: |||
      The Client ID from Vault. 
    ||| } },
    withClientId(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { client_id: value } },
      },
    },
    '#withClientSecret': { 'function': { help: |||
      The Client Secret from Vault. 
    ||| } },
    withClientSecret(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { client_secret: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the client. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
