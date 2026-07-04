{
  local outerSelf = self,
  new(terraformName, team):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_github_team+: {
        [terraformName]+: {
          team: team,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Auth backend to which team mapping will be configured.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { namespace: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      Policies to be assigned to this team.
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { policies: value } },
      },
    },
    '#team':: { 'function': { help: |||
      GitHub team name in "slugified" format.
    ||| } },
    withTeam(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { team: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_github_team.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Auth backend to which team mapping will be configured.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to be assigned to this team.
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#team':: { 'function': { help: |||
        GitHub team name in "slugified" format.
      ||| } },
      team(suffix=''):: refSelf.plain('.team%s' % suffix),
    },
  },
}
