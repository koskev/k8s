{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_provider+: { [terraformName]+: {
        name: name,
      } },
    },
    withScopesSupported(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { scopes_supported: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { namespace: value } },
      },
    },
    withIssuer(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { issuer: value } },
      },
    },
    withHttpsEnabled(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { https_enabled: value } },
      },
    },
    withAllowedClientIds(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { allowed_client_ids: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { id: value } },
      },
    },
    withIssuerHost(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { issuer_host: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { name: value } },
      },
    },
  },
}
