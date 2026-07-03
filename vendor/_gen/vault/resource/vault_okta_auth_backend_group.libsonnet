{
  new(terraformName, group_name, path):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend_group+: {
        [terraformName]+: {
          group_name: group_name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withGroupName':: { 'function': { help: |||
      Name of the Okta group 
    ||| } },
    withGroupName(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { group_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path to the Okta auth backend 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { path: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to associate with this group 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { policies: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_okta_auth_backend_group.%s%s }' % [terraformName, suffix],
    fields:: {
      '#group_name':: { 'function': { help: |||
        Name of the Okta group 
      ||| } },
      group_name(suffix=''):: refSelf.plain('.group_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Path to the Okta auth backend 
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to associate with this group 
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
    },
  },
}
