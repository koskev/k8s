{
  new(terraformName, user):: {
    _type:: 'tf',
    resource+: {
      vault_github_user+: { [terraformName]+: {
        user: user,
      } },
    },
    withPolicies(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { policies: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { backend: value } },
      },
    },
    withUser(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { user: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { id: value } },
      },
    },
  },
}
