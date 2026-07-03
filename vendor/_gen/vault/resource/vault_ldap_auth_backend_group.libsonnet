{
  new(terraformName, groupname):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_ldap_auth_backend_group+: {
        [terraformName]+: {
          groupname: groupname,
        },
      },
    },
  },
  functions(terraformName):: {
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
    '#withNamespace':: { 'function': { help: |||
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ldap_auth_backend_group.%s%s }' % [terraformName, suffix],
    fields:: {
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      groupname(suffix=''):: refSelf.plain('.groupname%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
    },
  },
}
