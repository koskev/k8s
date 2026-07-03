{
  new(terraformName, team):: {
    _type:: 'tf',
    resource+: {
      vault_github_team+: { [terraformName]+: {
        team: team,
      } },
    },
    withPolicies(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { policies: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { backend: value } },
      },
    },
    withTeam(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { team: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_team+: { [terraformName]+: { id: value } },
      },
    },
  },
}
