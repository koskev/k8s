{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_token+: { [terraformName]+: {
      } },
    },
    withWrappedToken(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapped_token: value } },
      },
    },
    withWrappingAccessor(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapping_accessor: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { metadata: value } },
      },
    },
    withPolicies(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { policies: value } },
      },
    },
    withRenewIncrement(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renew_increment: value } },
      },
    },
    withNoParent(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { no_parent: value } },
      },
    },
    withRenewMinLease(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renew_min_lease: value } },
      },
    },
    withNoDefaultPolicy(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { no_default_policy: value } },
      },
    },
    withPeriod(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { period: value } },
      },
    },
    withWrappingTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { role_name: value } },
      },
    },
    withLeaseStarted(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { lease_started: value } },
      },
    },
    withRenewable(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renewable: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { id: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { ttl: value } },
      },
    },
    withDisplayName(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { display_name: value } },
      },
    },
    withNumUses(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { num_uses: value } },
      },
    },
    withExplicitMaxTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { explicit_max_ttl: value } },
      },
    },
    withClientToken(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { client_token: value } },
      },
    },
    withLeaseDuration(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { lease_duration: value } },
      },
    },
  },
}
