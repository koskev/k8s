{
  new(terraformName, path, data_json):: {
    _type:: 'tf',
    resource+: {
      vault_generic_secret+: { [terraformName]+: {
        path: path,
        data_json: data_json,
      } },
    },
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
    withNamespace(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { path: value } },
      },
    },
    withData(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { data: value } },
      },
    },
    withDataJson(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    withDeleteAllVersions(value):: self {
      resource+: {
        vault_generic_secret+: { [terraformName]+: { delete_all_versions: value } },
      },
    },
  },
}
