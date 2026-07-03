{
  new(terraformName, mount, username):: {
    _type:: 'tf',
    resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: {
        mount: mount,
        username: username,
      } },
    },
    '#withMount': { 'function': { help: |||
      Path to the RADIUS auth mount where the user will be registered. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_radius_auth_backend_user+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_radius_auth_backend_user+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      A set of Vault policies to associate with this user. If not set, only the `default` policy will be applicable to the user. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_radius_auth_backend_user+: { [terraformName]+: { policies: value } },
      },
    },
    '#withUsername': { 'function': { help: |||
      The username to register with the RADIUS auth backend. 
    ||| } },
    withUsername(value):: self {
      resource+: {
        vault_radius_auth_backend_user+: { [terraformName]+: { username: value } },
      },
    },
  },
}
