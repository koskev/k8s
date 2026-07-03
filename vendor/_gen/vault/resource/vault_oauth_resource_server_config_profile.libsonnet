{
  new(terraformName, issuer_id, profile_name):: {
    _type:: 'tf',
    resource+: {
      vault_oauth_resource_server_config_profile+: { [terraformName]+: {
        issuer_id: issuer_id,
        profile_name: profile_name,
      } },
    },
    '#withAudiences': { 'function': { help: |||
      List of allowed audiences (aud claim) to validate in JWTs. 
    ||| } },
    withAudiences(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { audiences: value } },
      },
    },
    '#withClockSkewLeeway': { 'function': { help: |||
      Leeway for clock skew in seconds when validating time-based claims. Defaults to 0. 
    ||| } },
    withClockSkewLeeway(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { clock_skew_leeway: value } },
      },
    },
    '#withEnabled': { 'function': { help: |||
      Whether this profile is enabled for JWT validation. Disabled profiles are ignored. Defaults to true. 
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { enabled: value } },
      },
    },
    '#withId': { 'function': { help: |||
      Unique identifier for this resource. This is a stable UUID that persists across updates. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerId': { 'function': { help: |||
      The issuer ID (iss claim) to validate against in incoming JWTs. 
    ||| } },
    withIssuerId(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { issuer_id: value } },
      },
    },
    '#withJwksCaPem': { 'function': { help: |||
      Optional CA certificate (PEM format) for JWKS URI TLS validation. 
    ||| } },
    withJwksCaPem(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { jwks_ca_pem: value } },
      },
    },
    '#withJwksUri': { 'function': { help: |||
      The JWKS URI to fetch public keys from. Required when use_jwks=true. 
    ||| } },
    withJwksUri(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { jwks_uri: value } },
      },
    },
    '#withJwtType': { 'function': { help: |||
      The JWT type: 'access_token' or 'transaction_token'. Defaults to 'access_token'. 
    ||| } },
    withJwtType(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { jwt_type: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoDefaultPolicy': { 'function': { help: |||
      If true, JWT-authenticated tokens omit the default policy unless added elsewhere. Defaults to false. 
    ||| } },
    withNoDefaultPolicy(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { no_default_policy: value } },
      },
    },
    '#withOptionalAuthorizationDetails': { 'function': { help: |||
      When false, RAR (Rich Authorization Requests) is mandatory and authorization_details must be present in the token. When set to true, authorization_details in the JWT token are optional. Defaults to false. 
    ||| } },
    withOptionalAuthorizationDetails(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { optional_authorization_details: value } },
      },
    },
    '#withProfileName': { 'function': { help: |||
      The name of the OAuth Resource Server Configuration profile. Must be unique within the namespace. 
    ||| } },
    withProfileName(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { profile_name: value } },
      },
    },
    '#withSupportedAlgorithms': { 'function': { help: |||
      List of supported signing algorithms (e.g., RS256, ES256). Defaults to all supported algorithms. 
    ||| } },
    withSupportedAlgorithms(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { supported_algorithms: value } },
      },
    },
    '#withUseJwks': { 'function': { help: |||
      If true, use JWKS URI for key validation; if false, use static public keys. Defaults to true. 
    ||| } },
    withUseJwks(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { use_jwks: value } },
      },
    },
    '#withUserClaim': { 'function': { help: |||
      The claim to use as the user identifier. Defaults to 'sub'. 
    ||| } },
    withUserClaim(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { user_claim: value } },
      },
    },
  },
}
