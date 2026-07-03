{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    data+: {
      vault_aws_static_access_credentials+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    '#withAccessKey': { 'function': { help: |||
      AWS access key ID read from Vault. 
    ||| } },
    withAccessKey(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { access_key: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      AWS Secret Backend to read credentials from. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSecretKey': { 'function': { help: |||
      AWS secret key read from Vault. 
    ||| } },
    withSecretKey(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { secret_key: value } },
      },
    },
  },
}
