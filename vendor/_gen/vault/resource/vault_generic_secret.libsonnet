{
  new(terraformName, data_json, path):: {
    _type:: 'tf',
    resource+: {
      vault_generic_secret+: { [terraformName]+: {
        data_json: data_json,
        path: path,
      } },
    },
    '#withData':: { 'function': { help: |||
      Map of strings read from Vault. 
    ||| } },
    withData(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataJson':: { 'function': { help: |||
      JSON-encoded secret data to write. 
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDeleteAllVersions':: { 'function': { help: |||
      Only applicable for kv-v2 stores. If set, permanently deletes all versions for the specified key. 
    ||| } },
    withDeleteAllVersions(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { delete_all_versions: value } },
      },
    },
    '#withDisableRead':: { 'function': { help: |||
      Don't attempt to read the token from Vault if true; drift won't be detected. 
    ||| } },
    withDisableRead(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { disable_read: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where the generic secret will be written. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { path: value } },
      },
    },
  },
}
