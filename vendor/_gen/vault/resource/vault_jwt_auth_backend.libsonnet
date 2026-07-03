{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_jwt_auth_backend+: { [terraformName]+: {
      } },
    },
    '#withAccessor': { 'function': { help: |||
      The accessor of the JWT auth backend 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withBoundIssuer': { 'function': { help: |||
      The value against which to match the iss claim in a JWT 
    ||| } },
    withBoundIssuer(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { bound_issuer: value } },
      },
    },
    '#withDefaultRole': { 'function': { help: |||
      The default role to use if none is provided during login 
    ||| } },
    withDefaultRole(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { default_role: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      The description of the auth backend 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withJwksCaPem': { 'function': { help: |||
      The CA certificate or chain of certificates, in PEM format, to use to validate connections to the JWKS URL. If not set, system certificates are used. 
    ||| } },
    withJwksCaPem(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwks_ca_pem: value } },
      },
    },
    '#withJwksPairs': { 'function': { help: |||
      List of JWKS URL and optional CA certificate pairs. Cannot be used with 'jwks_url' or 'jwks_ca_pem'. Requires Vault 1.16+. 
    ||| } },
    withJwksPairs(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwks_pairs: value } },
      },
    },
    '#withJwksUrl': { 'function': { help: |||
      JWKS URL to use to authenticate signatures. Cannot be used with 'oidc_discovery_url' or 'jwt_validation_pubkeys'. 
    ||| } },
    withJwksUrl(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwks_url: value } },
      },
    },
    '#withJwtSupportedAlgs': { 'function': { help: |||
      A list of supported signing algorithms. Defaults to [RS256] 
    ||| } },
    withJwtSupportedAlgs(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwt_supported_algs: value } },
      },
    },
    '#withJwtValidationPubkeys': { 'function': { help: |||
      A list of PEM-encoded public keys to use to authenticate signatures locally. Cannot be used with 'jwks_url' or 'oidc_discovery_url'.  
    ||| } },
    withJwtValidationPubkeys(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwt_validation_pubkeys: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the auth method is local only 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceInState': { 'function': { help: |||
      Pass namespace in the OIDC state parameter instead of as a separate query parameter. With this setting, the allowed redirect URL(s) in Vault and on the provider side should not contain a namespace query parameter. This means only one redirect URL entry needs to be maintained on the OIDC provider side for all vault namespaces that will be authenticating against it. Defaults to true for new configs. 
    ||| } },
    withNamespaceInState(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { namespace_in_state: value } },
      },
    },
    '#withOidcClientId': { 'function': { help: |||
      Client ID used for OIDC 
    ||| } },
    withOidcClientId(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_id: value } },
      },
    },
    '#withOidcClientSecret': { 'function': { help: |||
      Client Secret used for OIDC 
    ||| } },
    withOidcClientSecret(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_secret: value } },
      },
    },
    '#withOidcClientSecretWo': { 'function': { help: |||
      Write-only Client Secret used for OIDC. This field is recommended over oidc_client_secret for enhanced security. 
    ||| } },
    withOidcClientSecretWo(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_secret_wo: value } },
      },
    },
    '#withOidcClientSecretWoVersion': { 'function': { help: |||
      Version counter for write-only oidc_client_secret field. Increment this value to force update of the secret. 
    ||| } },
    withOidcClientSecretWoVersion(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_secret_wo_version: value } },
      },
    },
    '#withOidcDiscoveryCaPem': { 'function': { help: |||
      The CA certificate or chain of certificates, in PEM format, to use to validate connections to the OIDC Discovery URL. If not set, system certificates are used 
    ||| } },
    withOidcDiscoveryCaPem(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_discovery_ca_pem: value } },
      },
    },
    '#withOidcDiscoveryUrl': { 'function': { help: |||
      The OIDC Discovery URL, without any .well-known component (base path). Cannot be used with 'jwks_url' or 'jwt_validation_pubkeys'. 
    ||| } },
    withOidcDiscoveryUrl(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_discovery_url: value } },
      },
    },
    '#withOidcResponseMode': { 'function': { help: |||
      The response mode to be used in the OAuth2 request. Allowed values are 'query' and 'form_post'. Defaults to 'query'. If using Vault namespaces, and oidc_response_mode is 'form_post', then 'namespace_in_state' should be set to false. 
    ||| } },
    withOidcResponseMode(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_response_mode: value } },
      },
    },
    '#withOidcResponseTypes': { 'function': { help: |||
      The response types to request. Allowed values are 'code' and 'id_token'. Defaults to 'code'. Note: 'id_token' may only be used if 'oidc_response_mode' is set to 'form_post'. 
    ||| } },
    withOidcResponseTypes(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_response_types: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      path to mount the backend 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withProviderConfig': { 'function': { help: |||
      Provider specific handling configuration 
    ||| } },
    withProviderConfig(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { provider_config: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of backend. Can be either 'jwt' or 'oidc' 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { type: value } },
      },
    },
  },
}
