{
  new(terraformName, mount):: {
    _type:: 'tf',
    data+: {
      vault_kv_secrets_list_v2+: { [terraformName]+: {
        mount: mount,
      } },
    },
    withId(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { namespace: value } },
      },
    },
    withNames(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { names: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { path: value } },
      },
    },
    withMount(value):: self {
      data+: {
        vault_kv_secrets_list_v2+: { [terraformName]+: { mount: value } },
      },
    },
  },
}
