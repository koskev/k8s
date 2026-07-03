{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_kv_secret_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    withPath(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { path: value } },
      },
    },
    withCas(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { cas: value } },
      },
    },
    withData(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data: value } },
      },
    },
    withDataJsonWoVersion(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json_wo_version: value } },
      },
    },
    withDeleteAllVersions(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { delete_all_versions: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { mount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { options: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { id: value } },
      },
    },
    withDisableRead(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { disable_read: value } },
      },
    },
    withDataJsonWo(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json_wo: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { name: value } },
      },
    },
    withDataJson(value):: self {
      resource+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json: value } },
      },
    },
  },
}
