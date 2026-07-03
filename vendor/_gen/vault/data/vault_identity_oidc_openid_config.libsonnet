{
  new(terraformName, name):: {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_openid_config+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAuthorizationEndpoint':: { 'function': { help: |||
      The Authorization Endpoint for the provider. 
    ||| } },
    withAuthorizationEndpoint(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { authorization_endpoint: value } },
      },
    },
    '#withGrantTypesSupported':: { 'function': { help: |||
      The grant types supported by the provider. 
    ||| } },
    withGrantTypesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { grant_types_supported: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdTokenSigningAlgValuesSupported':: { 'function': { help: |||
      The signing algorithms supported by the provider. 
    ||| } },
    withIdTokenSigningAlgValuesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { id_token_signing_alg_values_supported: value } },
      },
    },
    '#withIssuer':: { 'function': { help: |||
      The URL of the issuer for the provider. 
    ||| } },
    withIssuer(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withJwksUri':: { 'function': { help: |||
      The well known keys URI for the provider. 
    ||| } },
    withJwksUri(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { jwks_uri: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the provider. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRequestUriParameterSupported':: { 'function': { help: |||
      Specifies whether Request URI Parameter is supported by the provider. 
    ||| } },
    withRequestUriParameterSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { request_uri_parameter_supported: value } },
      },
    },
    '#withResponseTypesSupported':: { 'function': { help: |||
      The response types supported by the provider. 
    ||| } },
    withResponseTypesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { response_types_supported: value } },
      },
    },
    '#withScopesSupported':: { 'function': { help: |||
      The scopes supported by the provider. 
    ||| } },
    withScopesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { scopes_supported: value } },
      },
    },
    '#withSubjectTypesSupported':: { 'function': { help: |||
      The subject types supported by the provider. 
    ||| } },
    withSubjectTypesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { subject_types_supported: value } },
      },
    },
    '#withTokenEndpoint':: { 'function': { help: |||
      The Token Endpoint for the provider. 
    ||| } },
    withTokenEndpoint(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { token_endpoint: value } },
      },
    },
    '#withTokenEndpointAuthMethodsSupported':: { 'function': { help: |||
      The token endpoint auth methods supported by the provider. 
    ||| } },
    withTokenEndpointAuthMethodsSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { token_endpoint_auth_methods_supported: value } },
      },
    },
    '#withUserinfoEndpoint':: { 'function': { help: |||
      The User Info Endpoint for the provider. 
    ||| } },
    withUserinfoEndpoint(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { userinfo_endpoint: value } },
      },
    },
  },
}
