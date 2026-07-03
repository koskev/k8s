{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_jwt_auth_backend+: { [terraformName]+: {
      } },
    },
    withOidcClientSecret(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_secret: value } },
      },
    },
    withProviderConfig(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { provider_config: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { type: value } },
      },
    },
    withJwtSupportedAlgs(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwt_supported_algs: value } },
      },
    },
    withOidcClientSecretWoVersion(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_secret_wo_version: value } },
      },
    },
    withOidcResponseTypes(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_response_types: value } },
      },
    },
    withBoundIssuer(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { bound_issuer: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withOidcResponseMode(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_response_mode: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withJwtValidationPubkeys(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwt_validation_pubkeys: value } },
      },
    },
    withDefaultRole(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { default_role: value } },
      },
    },
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
    withJwksPairs(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwks_pairs: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withJwksCaPem(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwks_ca_pem: value } },
      },
    },
    withNamespaceInState(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { namespace_in_state: value } },
      },
    },
    withOidcClientId(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_id: value } },
      },
    },
    withOidcDiscoveryCaPem(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_discovery_ca_pem: value } },
      },
    },
    withOidcDiscoveryUrl(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_discovery_url: value } },
      },
    },
    withOidcClientSecretWo(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { oidc_client_secret_wo: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withJwksUrl(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { jwks_url: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_jwt_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
  },
}
