{
  new(terraformName, groupname):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend_group+: { [terraformName]+: {
        groupname: groupname,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { backend: value } },
      },
    },
    withGroupname(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { groupname: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { namespace: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_ldap_auth_backend_group+: { [terraformName]+: { policies: value } },
      },
    },
  },
}
