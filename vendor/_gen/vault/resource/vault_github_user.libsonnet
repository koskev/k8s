{
  local outerSelf = self,
  new(terraformName, user):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_github_user+: {
        [terraformName]+: {
          user: user,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Auth backend to which user mapping will be congigured.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      Policies to be assigned to this user.
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { policies: value } },
      },
    },
    '#user':: { 'function': { help: |||
      GitHub user name.
    ||| } },
    withUser(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { user: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_github_user.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Auth backend to which user mapping will be congigured.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to be assigned to this user.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#user':: { 'function': { help: |||
        GitHub user name.
      ||| } },
      user(suffix=''):: refSelf.plain('.user%s' % suffix),
    },
  },
}
