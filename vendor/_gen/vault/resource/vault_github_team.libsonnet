{
  new(terraformName, team):: {
    _type:: 'tf',
    resource+: {
      vault_github_team+: { [terraformName]+: {
        team: team,
      } },
    },
    '#withBackend': { 'function': { help: |||
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Policies to be assigned to this team. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { policies: value } },
      },
    },
    '#withTeam': { 'function': { help: |||
      GitHub team name in "slugified" format. 
    ||| } },
    withTeam(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { team: value } },
      },
    },
  },
}
