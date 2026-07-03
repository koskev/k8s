{
  new(terraformName, name):: {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_openid_config+: { [terraformName]+: {
        name: name,
      } },
    },
    withResponseTypesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { response_types_supported: value } },
      },
    },
    withIdTokenSigningAlgValuesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { id_token_signing_alg_values_supported: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { name: value } },
      },
    },
    withIssuer(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { issuer: value } },
      },
    },
    withAuthorizationEndpoint(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { authorization_endpoint: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenEndpointAuthMethodsSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { token_endpoint_auth_methods_supported: value } },
      },
    },
    withTokenEndpoint(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { token_endpoint: value } },
      },
    },
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
    withScopesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { scopes_supported: value } },
      },
    },
    withSubjectTypesSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { subject_types_supported: value } },
      },
    },
    withRequestUriParameterSupported(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { request_uri_parameter_supported: value } },
      },
    },
    withJwksUri(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { jwks_uri: value } },
      },
    },
    withUserinfoEndpoint(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { userinfo_endpoint: value } },
      },
    },
  },
}
