{
  local outerSelf = self,
  new(terraformName, path, username):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
    withForEach(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { providers: value } },
      },
    },
    '#groups':: { 'function': { help: |||
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
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      Path to the Okta auth backend
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { path: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      Policies to associate with this user
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    '#username':: { 'function': { help: |||
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
