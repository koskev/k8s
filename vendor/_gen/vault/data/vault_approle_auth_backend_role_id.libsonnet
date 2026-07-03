{
  new(terraformName, role_name):: {
    _type:: 'tf',
    data+: {
      vault_approle_auth_backend_role_id+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    '#withBackend': { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleId': { 'function': { help: |||
      The RoleID of the role. 
    ||| } },
    withRoleId(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { role_id: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { role_name: value } },
      },
    },
  },
}
