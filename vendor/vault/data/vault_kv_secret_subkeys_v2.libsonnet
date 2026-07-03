{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    data+: {
      vault_kv_secret_subkeys_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    withMount(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { mount: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    withDepth(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { depth: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { id: value } },
      },
    },
    withDataJson(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { data_json: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { path: value } },
      },
    },
    withData(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { data: value } },
      },
    },
    withVersion(value):: self {
      data+: {
        vault_kv_secret_subkeys_v2+: { [terraformName]+: { version: value } },
      },
    },
  },
}
