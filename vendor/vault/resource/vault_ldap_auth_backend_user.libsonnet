{
  new(terraformName, username):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend_user+: { [terraformName]+: {
        username: username,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { backend: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { id: value } },
      },
    },
    withGroups(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { groups: value } },
      },
    },
  },
}
