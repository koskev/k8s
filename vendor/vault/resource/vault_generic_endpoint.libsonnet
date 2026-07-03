{
  new(terraformName, data_json, path):: {
    _type:: 'tf',
    resource+: {
      vault_generic_endpoint+: { [terraformName]+: {
        data_json: data_json,
        path: path,
      } },
    },
    withDataJson(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { data_json: value } },
      },
    },
    withIgnoreAbsentFields(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { ignore_absent_fields: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { path: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { id: value } },
      },
    },
    withDisableDelete(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { disable_delete: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { namespace: value } },
      },
    },
    withWriteData(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_data: value } },
      },
    },
    withDisableRead(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { disable_read: value } },
      },
    },
    withWriteDataJson(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_data_json: value } },
      },
    },
    withWriteFields(value):: self {
      resource+: {
        vault_generic_endpoint+: { [terraformName]+: { write_fields: value } },
      },
    },
  },
}
