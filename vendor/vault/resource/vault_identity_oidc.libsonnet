{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc+: { [terraformName]+: {
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc+: { [terraformName]+: { namespace: value } },
      },
    },
    withIssuer(value):: self {
      resource+: {
        vault_identity_oidc+: { [terraformName]+: { issuer: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc+: { [terraformName]+: { id: value } },
      },
    },
  },
}
