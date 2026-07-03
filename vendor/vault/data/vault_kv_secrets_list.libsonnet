{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_kv_secrets_list+: { [terraformName]+: {
        path: path,
      } },
    },
    withId(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { id: value } },
      },
    },
    withNames(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { names: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { path: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kv_secrets_list+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
