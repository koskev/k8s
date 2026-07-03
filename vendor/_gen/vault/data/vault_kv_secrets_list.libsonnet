{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_kv_secrets_list+: { [terraformName]+: {
        path: path,
      } },
    },
    withId(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { id: value } },
      },
    },
    '#withNames':: { 'function': { help: |||
      List of all secret names. 
    ||| } },
    withNames(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { names: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full KV-V1 path where secrets will be listed. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { path: value } },
      },
    },
  },
}
