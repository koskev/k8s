{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_provider+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAllowedClientIds': { 'function': { help: |||
      The client IDs that are permitted to use the provider. If empty, no clients are allowed. If "*", all clients are allowed. 
    ||| } },
    withAllowedClientIds(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { allowed_client_ids: value } },
      },
    },
    '#withHttpsEnabled': { 'function': { help: |||
      Set to true if the issuer endpoint uses HTTPS. 
    ||| } },
    withHttpsEnabled(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { https_enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuer': { 'function': { help: |||
      Specifies what will be used as the 'scheme://host:port' component for the 'iss' claim of ID tokens.This value is computed using the issuer_host and https_enabled fields. 
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withIssuerHost': { 'function': { help: |||
      The host for the issuer. Can be either host or host:port. 
    ||| } },
    withIssuerHost(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { issuer_host: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the provider. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withScopesSupported': { 'function': { help: |||
      The scopes available for requesting on the provider. 
    ||| } },
    withScopesSupported(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { scopes_supported: value } },
      },
    },
  },
}
