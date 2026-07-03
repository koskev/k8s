{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_kv_secret+: { [terraformName]+: {
        path: path,
      } },
    },
    withData(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { data: value } },
      },
    },
    withLeaseId(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { lease_id: value } },
      },
    },
    withLeaseRenewable(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { path: value } },
      },
    },
    withLeaseDuration(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { id: value } },
      },
    },
    withDataJson(value):: self {
      data+: {
        vault_kv_secret+: { [terraformName]+: { data_json: value } },
      },
    },
  },
}
