{
  new(terraformName, user):: {
    _type:: 'tf',
    resource+: {
      vault_github_user+: { [terraformName]+: {
        user: user,
      } },
    },
    '#withBackend': { 'function': { help: |||
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Policies to be assigned to this user. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { policies: value } },
      },
    },
    '#withUser': { 'function': { help: |||
      GitHub user name. 
    ||| } },
    withUser(value):: self {
      resource+: {
        vault_github_user+: { [terraformName]+: { user: value } },
      },
    },
  },
}
