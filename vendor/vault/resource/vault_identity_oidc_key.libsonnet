{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_key+: { [terraformName]+: {
        name: name,
      } },
    },
    withAlgorithm(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { algorithm: value } },
      },
    },
    withAllowedClientIds(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { allowed_client_ids: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { id: value } },
      },
    },
    withVerificationTtl(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { verification_ttl: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { name: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { rotation_period: value } },
      },
    },
  },
}
