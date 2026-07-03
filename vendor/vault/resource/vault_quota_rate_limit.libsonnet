{
  new(terraformName, name, rate):: {
    _type:: 'tf',
    resource+: {
      vault_quota_rate_limit+: { [terraformName]+: {
        name: name,
        rate: rate,
      } },
    },
    withPath(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { path: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { role: value } },
      },
    },
    withSecondaryRate(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { secondary_rate: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { id: value } },
      },
    },
    withRate(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { rate: value } },
      },
    },
    withInterval(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { interval: value } },
      },
    },
    withBlockInterval(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { block_interval: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { namespace: value } },
      },
    },
    withInheritable(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { inheritable: value } },
      },
    },
    withGroupBy(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { group_by: value } },
      },
    },
  },
}
