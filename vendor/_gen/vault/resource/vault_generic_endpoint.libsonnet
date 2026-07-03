{
  new(terraformName, data_json, path):: {
    _type:: 'tf',
    resource+: {
      vault_generic_endpoint+: { [terraformName]+: {
        data_json: data_json,
        path: path,
      } },
    },
    '#withDataJson': { 'function': { help: |||
      JSON-encoded data to write. 
    ||| } },
    withDataJson(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withDisableDelete': { 'function': { help: |||
      Don't attempt to delete the path from Vault if true 
    ||| } },
    withDisableDelete(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { disable_delete: value } },
      },
    },
    '#withDisableRead': { 'function': { help: |||
      Don't attempt to read the path from Vault if true; drift won't be detected 
    ||| } },
    withDisableRead(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { disable_read: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { id: value } },
      },
    },
    '#withIgnoreAbsentFields': { 'function': { help: |||
      When reading, disregard fields not present in data_json 
    ||| } },
    withIgnoreAbsentFields(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { ignore_absent_fields: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Full path where to the endpoint that will be written 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { path: value } },
      },
    },
    '#withWriteData': { 'function': { help: |||
      Map of strings returned by write operation 
    ||| } },
    withWriteData(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_data: value } },
      },
    },
    '#withWriteDataJson': { 'function': { help: |||
      JSON data returned by write operation 
    ||| } },
    withWriteDataJson(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_data_json: value } },
      },
    },
    '#withWriteFields': { 'function': { help: |||
      Top-level fields returned by write to persist in state 
    ||| } },
    withWriteFields(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_fields: value } },
      },
    },
  },
}
