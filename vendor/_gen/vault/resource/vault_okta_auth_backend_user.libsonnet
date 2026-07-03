{
  new(terraformName, path, username):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend_user+: {
        [terraformName]+: {
          path: path,
          username: username,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withGroups':: { 'function': { help: |||
      Groups within the Okta auth backend to associate with this user 
    ||| } },
    withGroups(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { groups: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path to the Okta auth backend 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { path: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to associate with this user 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    '#withUsername':: { 'function': { help: |||
      Name of the user within Okta 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_okta_auth_backend_user.%s%s }' % [terraformName, suffix],
    fields:: {
      '#groups':: { 'function': { help: |||
        Groups within the Okta auth backend to associate with this user 
      ||| } },
      groups(suffix=''):: refSelf.plain('.groups%s' % suffix),
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
        Policies to associate with this user 
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#username':: { 'function': { help: |||
        Name of the user within Okta 
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
