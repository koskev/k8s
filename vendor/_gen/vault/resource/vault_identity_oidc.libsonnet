{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuer':: { 'function': { help: |||
      Issuer URL to be used in the iss claim of the token. If not set, Vault's api_addr will be used. The issuer is a case sensitive URL using the https scheme that contains scheme, host, and optionally, port number and path components, but no query or fragment components. 
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_identity_oidc+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
