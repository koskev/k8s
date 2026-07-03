{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_client+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAccessTokenTtl': { 'function': { help: |||
      The time-to-live for access tokens obtained by the client. 
    ||| } },
    withAccessTokenTtl(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { access_token_ttl: value } },
      },
    },
    '#withAssignments': { 'function': { help: |||
      A list of assignment resources associated with the client. 
    ||| } },
    withAssignments(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { assignments: value } },
      },
    },
    '#withClientId': { 'function': { help: |||
      The Client ID from Vault. 
    ||| } },
    withClientId(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_id: value } },
      },
    },
    '#withClientSecret': { 'function': { help: |||
      The Client Secret from Vault. 
    ||| } },
    withClientSecret(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_secret: value } },
      },
    },
    '#withClientType': { 'function': { help: |||
      The client type based on its ability to maintain confidentiality of credentials.Defaults to 'confidential'. 
    ||| } },
    withClientType(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_type: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdTokenTtl': { 'function': { help: |||
      The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key. 
    ||| } },
    withIdTokenTtl(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { id_token_ttl: value } },
      },
    },
    '#withKey': { 'function': { help: |||
      A reference to a named key resource in Vault. This cannot be modified after creation. 
    ||| } },
    withKey(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { key: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the client. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRedirectUris': { 'function': { help: |||
      Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request. 
    ||| } },
    withRedirectUris(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { redirect_uris: value } },
      },
    },
  },
}
