{
  new(terraformName, username):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend_user+: { [terraformName]+: {
        username: username,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { backend: value } },
      },
    },
    withGroups(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { groups: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_ldap_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
  },
}
