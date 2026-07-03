{
  new(terraformName, group_name, path):: {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend_group+: { [terraformName]+: {
        group_name: group_name,
        path: path,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { id: value } },
      },
    },
    withGroupName(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { group_name: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { policies: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { path: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
