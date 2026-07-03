{
  new(terraformName, group_name, path):: {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend_group+: { [terraformName]+: {
        group_name: group_name,
        path: path,
      } },
    },
    '#withGroupName': { 'function': { help: |||
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path to the Okta auth backend 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { path: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Policies to associate with this group 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend_group+: { [terraformName]+: { policies: value } },
      },
    },
  },
}
