{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_assignment+: { [terraformName]+: {
        name: name,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { namespace: value } },
      },
    },
    withGroupIds(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { group_ids: value } },
      },
    },
    withEntityIds(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { entity_ids: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_assignment+: { [terraformName]+: { id: value } },
      },
    },
  },
}
