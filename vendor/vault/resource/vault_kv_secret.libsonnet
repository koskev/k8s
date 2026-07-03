{
  new(terraformName, path, data_json):: {
    _type:: 'tf',
    resource+: {
      vault_kv_secret+: { [terraformName]+: {
        path: path,
        data_json: data_json,
      } },
    },
    withPath(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { path: value } },
      },
    },
    withData(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { data: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { id: value } },
      },
    },
    withDataJson(value):: self {
      resource+: {
        vault_kv_secret+: { [terraformName]+: { data_json: value } },
      },
    },
  },
}
