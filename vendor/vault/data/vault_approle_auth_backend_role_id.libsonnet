{
  new(terraformName, role_name):: {
    _type:: 'tf',
    data+: {
      vault_approle_auth_backend_role_id+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    withNamespace(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoleId(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { role_id: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { role_name: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { id: value } },
      },
    },
  },
}
