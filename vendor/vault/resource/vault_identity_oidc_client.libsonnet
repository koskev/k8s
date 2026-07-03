{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_client+: { [terraformName]+: {
        name: name,
      } },
    },
    withRedirectUris(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { redirect_uris: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_id: value } },
      },
    },
    withIdTokenTtl(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { id_token_ttl: value } },
      },
    },
    withClientSecret(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_secret: value } },
      },
    },
    withKey(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { key: value } },
      },
    },
    withAccessTokenTtl(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { access_token_ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { namespace: value } },
      },
    },
    withClientType(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_type: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { id: value } },
      },
    },
    withAssignments(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { assignments: value } },
      },
    },
  },
}
