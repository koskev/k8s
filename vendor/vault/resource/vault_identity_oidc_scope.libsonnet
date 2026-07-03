{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_scope+: { [terraformName]+: {
        name: name,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { id: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { description: value } },
      },
    },
    withTemplate(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { template: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { name: value } },
      },
    },
  },
}
