{
  new(terraformName, path):: {
    _type:: 'tf',
    data+: {
      vault_generic_secret+: { [terraformName]+: {
        path: path,
      } },
    },
    withPath(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { path: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { id: value } },
      },
    },
    withData(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { data: value } },
      },
    },
    withLeaseId(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_id: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    withLeaseDuration(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withLeaseRenewable(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    withLeaseStartTime(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    withVersion(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { version: value } },
      },
    },
    withDataJson(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { data_json: value } },
      },
    },
    withWithLeaseStartTime(value):: self {
      data+: {
        vault_generic_secret+: { [terraformName]+: { with_lease_start_time: value } },
      },
    },
  },
}
