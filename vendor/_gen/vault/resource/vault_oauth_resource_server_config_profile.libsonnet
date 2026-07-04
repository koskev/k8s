{
  '#new':: { 'function': { help: |||
    Manages OAuth Resource Server Configuration profiles in Vault Enterprise. These profiles define how Vault validates JWT tokens from OAuth 2.0 resource servers.
  ||| } },
  local outerSelf = self,
  new(terraformName, issuer_id, profile_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_oauth_resource_server_config_profile+: {
        [terraformName]+: {
          issuer_id: issuer_id,
          profile_name: profile_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAudiences':: { 'function': { help: |||
      List of allowed audiences (aud claim) to validate in JWTs.
    ||| } },
    withAudiences(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { audiences: value } },
      },
    },
    '#withClockSkewLeeway':: { 'function': { help: |||
      Leeway for clock skew in seconds when validating time-based claims. Defaults to 0.
    ||| } },
    withClockSkewLeeway(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { clock_skew_leeway: value } },
      },
    },
    '#withEnabled':: { 'function': { help: |||
      Whether this profile is enabled for JWT validation. Disabled profiles are ignored. Defaults to true.
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { enabled: value } },
      },
    },
    '#withIssuerId':: { 'function': { help: |||
      The issuer ID (iss claim) to validate against in incoming JWTs.
    ||| } },
    withIssuerId(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { issuer_id: value } },
      },
    },
    '#withJwksCaPem':: { 'function': { help: |||
      Optional CA certificate (PEM format) for JWKS URI TLS validation.
    ||| } },
    withJwksCaPem(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { jwks_ca_pem: value } },
      },
    },
    '#withJwksUri':: { 'function': { help: |||
      The JWKS URI to fetch public keys from. Required when use_jwks=true.
    ||| } },
    withJwksUri(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { jwks_uri: value } },
      },
    },
    '#withJwtType':: { 'function': { help: |||
      The JWT type: 'access_token' or 'transaction_token'. Defaults to 'access_token'.
    ||| } },
    withJwtType(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { jwt_type: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoDefaultPolicy':: { 'function': { help: |||
      If true, JWT-authenticated tokens omit the default policy unless added elsewhere. Defaults to false.
    ||| } },
    withNoDefaultPolicy(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { no_default_policy: value } },
      },
    },
    '#withOptionalAuthorizationDetails':: { 'function': { help: |||
      When false, RAR (Rich Authorization Requests) is mandatory and authorization_details must be present in the token. When set to true, authorization_details in the JWT token are optional. Defaults to false.
    ||| } },
    withOptionalAuthorizationDetails(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { optional_authorization_details: value } },
      },
    },
    '#withProfileName':: { 'function': { help: |||
      The name of the OAuth Resource Server Configuration profile. Must be unique within the namespace.
    ||| } },
    withProfileName(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { profile_name: value } },
      },
    },
    '#withSupportedAlgorithms':: { 'function': { help: |||
      List of supported signing algorithms (e.g., RS256, ES256). Defaults to all supported algorithms.
    ||| } },
    withSupportedAlgorithms(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { supported_algorithms: value } },
      },
    },
    '#withUseJwks':: { 'function': { help: |||
      If true, use JWKS URI for key validation; if false, use static public keys. Defaults to true.
    ||| } },
    withUseJwks(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { use_jwks: value } },
      },
    },
    '#withUserClaim':: { 'function': { help: |||
      The claim to use as the user identifier. Defaults to 'sub'.
    ||| } },
    withUserClaim(value):: self {
      resource+: {
        vault_oauth_resource_server_config_profile+: { [terraformName]+: { user_claim: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_oauth_resource_server_config_profile.%s%s }' % [terraformName, suffix],
    fields:: {
      '#audiences':: { 'function': { help: |||
        List of allowed audiences (aud claim) to validate in JWTs.
      ||| } },
      audiences(suffix=''):: refSelf.plain('.audiences%s' % suffix),
      '#clock_skew_leeway':: { 'function': { help: |||
        Leeway for clock skew in seconds when validating time-based claims. Defaults to 0.
      ||| } },
      clock_skew_leeway(suffix=''):: refSelf.plain('.clock_skew_leeway%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Whether this profile is enabled for JWT validation. Disabled profiles are ignored. Defaults to true.
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      '#id':: { 'function': { help: |||
        Unique identifier for this resource. This is a stable UUID that persists across updates.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer_id':: { 'function': { help: |||
        The issuer ID (iss claim) to validate against in incoming JWTs.
      ||| } },
      issuer_id(suffix=''):: refSelf.plain('.issuer_id%s' % suffix),
      '#jwks_ca_pem':: { 'function': { help: |||
        Optional CA certificate (PEM format) for JWKS URI TLS validation.
      ||| } },
      jwks_ca_pem(suffix=''):: refSelf.plain('.jwks_ca_pem%s' % suffix),
      '#jwks_uri':: { 'function': { help: |||
        The JWKS URI to fetch public keys from. Required when use_jwks=true.
      ||| } },
      jwks_uri(suffix=''):: refSelf.plain('.jwks_uri%s' % suffix),
      '#jwt_type':: { 'function': { help: |||
        The JWT type: 'access_token' or 'transaction_token'. Defaults to 'access_token'.
      ||| } },
      jwt_type(suffix=''):: refSelf.plain('.jwt_type%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#no_default_policy':: { 'function': { help: |||
        If true, JWT-authenticated tokens omit the default policy unless added elsewhere. Defaults to false.
      ||| } },
      no_default_policy(suffix=''):: refSelf.plain('.no_default_policy%s' % suffix),
      '#optional_authorization_details':: { 'function': { help: |||
        When false, RAR (Rich Authorization Requests) is mandatory and authorization_details must be present in the token. When set to true, authorization_details in the JWT token are optional. Defaults to false.
      ||| } },
      optional_authorization_details(suffix=''):: refSelf.plain('.optional_authorization_details%s' % suffix),
      '#profile_name':: { 'function': { help: |||
        The name of the OAuth Resource Server Configuration profile. Must be unique within the namespace.
      ||| } },
      profile_name(suffix=''):: refSelf.plain('.profile_name%s' % suffix),
      '#supported_algorithms':: { 'function': { help: |||
        List of supported signing algorithms (e.g., RS256, ES256). Defaults to all supported algorithms.
      ||| } },
      supported_algorithms(suffix=''):: refSelf.plain('.supported_algorithms%s' % suffix),
      '#use_jwks':: { 'function': { help: |||
        If true, use JWKS URI for key validation; if false, use static public keys. Defaults to true.
      ||| } },
      use_jwks(suffix=''):: refSelf.plain('.use_jwks%s' % suffix),
      '#user_claim':: { 'function': { help: |||
        The claim to use as the user identifier. Defaults to 'sub'.
      ||| } },
      user_claim(suffix=''):: refSelf.plain('.user_claim%s' % suffix),
    },
  },
}
