{
  new(terraformName, key, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_role+: { [terraformName]+: {
        key: key,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { id: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { client_id: value } },
      },
    },
    withKey(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { key: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTemplate(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { template: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { name: value } },
      },
    },
  },
}
