{
  new(terraformName, name):: {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_public_keys+: { [terraformName]+: {
        name: name,
      } },
    },
    withId(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { id: value } },
      },
    },
    withKeys(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { keys: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { namespace: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { name: value } },
      },
    },
  },
}
