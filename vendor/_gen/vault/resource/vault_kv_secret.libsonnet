{
  new(terraformName, data_json, path):: {
    _type:: 'tf',
    resource+: {
      vault_kv_secret+: { [terraformName]+: {
        data_json: data_json,
        path: path,
      } },
    },
    '#withData': { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withData(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson': { 'function': { help: |||
      JSON-encoded secret data to write. 
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Full path of the KV-V1 secret. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { path: value } },
      },
    },
  },
}
