{
  new(terraformName, name):: {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_client_creds+: { [terraformName]+: {
        name: name,
      } },
    },
    withId(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { name: value } },
      },
    },
    withClientSecret(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { client_secret: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { namespace: value } },
      },
    },
    withClientId(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { client_id: value } },
      },
    },
  },
}
