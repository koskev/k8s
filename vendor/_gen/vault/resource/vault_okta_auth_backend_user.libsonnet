{
  new(terraformName, path, username):: {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend_user+: { [terraformName]+: {
        path: path,
        username: username,
      } },
    },
    '#withGroups': { 'function': { help: |||
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path to the Okta auth backend 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { path: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Policies to associate with this user 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      Name of the user within Okta 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_okta_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
  },
}
