{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_token+: { [terraformName]+: {
      } },
    },
    '#withClientToken': { 'function': { help: |||
      The client token. 
    ||| } },
    withClientToken(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { client_token: value } },
      },
    },
    '#withDisplayName': { 'function': { help: |||
      The display name of the token. 
    ||| } },
    withDisplayName(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { display_name: value } },
      },
    },
    '#withExplicitMaxTtl': { 'function': { help: |||
      The explicit max TTL of the token. 
    ||| } },
    withExplicitMaxTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { explicit_max_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeaseDuration': { 'function': { help: |||
      The token lease duration. 
    ||| } },
    withLeaseDuration(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { lease_duration: value } },
      },
    },
    '#withLeaseStarted': { 'function': { help: |||
      The token lease started on. 
    ||| } },
    withLeaseStarted(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { lease_started: value } },
      },
    },
    '#withMetadata': { 'function': { help: |||
      Metadata to be associated with the token. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoDefaultPolicy': { 'function': { help: |||
      Flag to disable the default policy. 
    ||| } },
    withNoDefaultPolicy(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { no_default_policy: value } },
      },
    },
    '#withNoParent': { 'function': { help: |||
      Flag to create a token without parent. 
    ||| } },
    withNoParent(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { no_parent: value } },
      },
    },
    '#withNumUses': { 'function': { help: |||
      The number of allowed uses of the token. 
    ||| } },
    withNumUses(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { num_uses: value } },
      },
    },
    '#withPeriod': { 'function': { help: |||
      The period of the token. 
    ||| } },
    withPeriod(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { period: value } },
      },
    },
    '#withPolicies': { 'function': { help: |||
      List of policies. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { policies: value } },
      },
    },
    '#withRenewIncrement': { 'function': { help: |||
      The renew increment. 
    ||| } },
    withRenewIncrement(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renew_increment: value } },
      },
    },
    '#withRenewMinLease': { 'function': { help: |||
      The minimum lease to renew token. 
    ||| } },
    withRenewMinLease(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renew_min_lease: value } },
      },
    },
    '#withRenewable': { 'function': { help: |||
      Flag to allow the token to be renewed 
    ||| } },
    withRenewable(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renewable: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      The token role name. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      The TTL period of the token. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withWrappedToken': { 'function': { help: |||
      The client wrapped token. 
    ||| } },
    withWrappedToken(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapped_token: value } },
      },
    },
    '#withWrappingAccessor': { 'function': { help: |||
      The client wrapping accessor. 
    ||| } },
    withWrappingAccessor(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapping_accessor: value } },
      },
    },
    '#withWrappingTtl': { 'function': { help: |||
      The TTL period of the wrapped token. 
    ||| } },
    withWrappingTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
  },
}
