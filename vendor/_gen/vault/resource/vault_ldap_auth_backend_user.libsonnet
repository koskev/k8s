{
  local outerSelf = self,
  new(terraformName, username):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend_user+: {
        [terraformName]+: {
          username: username,
        },
      },
    },
  },
  functions(terraformName):: {
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
    '#withNamespace':: { 'function': { help: |||
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ldap_auth_backend_user.%s%s }' % [terraformName, suffix],
    fields:: {
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      groups(suffix=''):: refSelf.plain('.groups%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
