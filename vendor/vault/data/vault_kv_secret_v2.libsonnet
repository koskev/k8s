{
  new(terraformName, name, mount):: {
    _type:: 'tf',
    data+: {
      vault_kv_secret_v2+: { [terraformName]+: {
        name: name,
        mount: mount,
      } },
    },
    withDataJson(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { data_json: value } },
      },
    },
    withCreatedTime(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { created_time: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { path: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { name: value } },
      },
    },
    withCustomMetadata(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withDestroyed(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { destroyed: value } },
      },
    },
    withData(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { data: value } },
      },
    },
    withMount(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { mount: value } },
      },
    },
    withDeletionTime(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { deletion_time: value } },
      },
    },
    withVersion(value):: self {
      data+: {
        vault_kv_secret_v2+: { [terraformName]+: { version: value } },
      },
    },
  },
}
