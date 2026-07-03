{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    resource+: {
      vault_nomad_secret_role+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The mount path for the Nomad backend. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withGlobal': { 'function': { help: |||
      Specifies if the token should be global. 
    ||| } },
    withGlobal(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { global: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      Comma separated list of Nomad policies the token is going to be created against. These need to be created beforehand in Nomad. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { policies: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { role: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Specifies the type of token to create when using this role. Valid values are "client" or "management". 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_nomad_secret_role+: { [terraformName]+: { type: value } },
      },
    },
  },
}
