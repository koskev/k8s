{
  new(terraformName, name, max_leases):: {
    _type:: 'tf',
    resource+: {
      vault_quota_lease_count+: { [terraformName]+: {
        name: name,
        max_leases: max_leases,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { namespace: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { role: value } },
      },
    },
    withInheritable(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { inheritable: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { path: value } },
      },
    },
    withMaxLeases(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { max_leases: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_quota_lease_count+: { [terraformName]+: { id: value } },
      },
    },
  },
}
