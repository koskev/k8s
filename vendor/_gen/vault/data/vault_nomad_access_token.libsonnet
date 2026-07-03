{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_nomad_access_token+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    '#withAccessorId': { 'function': { help: |||
      The public identifier for a specific token. It can be used to look up information about a token or to revoke a token. 
    ||| } },
    withAccessorId(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { accessor_id: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      Nomad secret backend to generate tokens from. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRole(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { role: value } },
      },
    },
    '#withSecretId': { 'function': { help: |||
      Used to make requests to Nomad and should be kept private. 
    ||| } },
    withSecretId(value):: self {
      data+: {
        vault_nomad_access_token+: { [terraformName]+: { secret_id: value } },
      },
    },
  },
}
