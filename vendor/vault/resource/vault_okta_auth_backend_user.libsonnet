{
  new(terraformName, username, path):: {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend_user+: { [terraformName]+: {
        username: username,
        path: path,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { id: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
    withGroups(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { groups: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { path: value } },
      },
    },
  },
}
