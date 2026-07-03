{
  new(terraformName, groupname):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend_group+: { [terraformName]+: {
        groupname: groupname,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { id: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { policies: value } },
      },
    },
    withGroupname(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { groupname: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { backend: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
