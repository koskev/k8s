{
  local outerSelf = self,
  new(terraformName, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_approle_auth_backend_role_id+: {
        [terraformName]+: {
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
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
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_approle_auth_backend_role_id+: { [terraformName]+: { role_name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_approle_auth_backend_role_id.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role_id':: { 'function': { help: |||
        The RoleID of the role.
      ||| } },
      role_id(suffix=''):: refSelf.plain('.role_id%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
    },
  },
}
