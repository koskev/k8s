{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_token+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDisplayName':: { 'function': { help: |||
      The display name of the token. 
    ||| } },
    withDisplayName(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { display_name: value } },
      },
    },
    '#withExplicitMaxTtl':: { 'function': { help: |||
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
    '#withMetadata':: { 'function': { help: |||
      Metadata to be associated with the token. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoDefaultPolicy':: { 'function': { help: |||
      Flag to disable the default policy. 
    ||| } },
    withNoDefaultPolicy(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { no_default_policy: value } },
      },
    },
    '#withNoParent':: { 'function': { help: |||
      Flag to create a token without parent. 
    ||| } },
    withNoParent(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { no_parent: value } },
      },
    },
    '#withNumUses':: { 'function': { help: |||
      The number of allowed uses of the token. 
    ||| } },
    withNumUses(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { num_uses: value } },
      },
    },
    '#withPeriod':: { 'function': { help: |||
      The period of the token. 
    ||| } },
    withPeriod(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { period: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      List of policies. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { policies: value } },
      },
    },
    '#withRenewIncrement':: { 'function': { help: |||
      The renew increment. 
    ||| } },
    withRenewIncrement(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renew_increment: value } },
      },
    },
    '#withRenewMinLease':: { 'function': { help: |||
      The minimum lease to renew token. 
    ||| } },
    withRenewMinLease(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renew_min_lease: value } },
      },
    },
    '#withRenewable':: { 'function': { help: |||
      Flag to allow the token to be renewed 
    ||| } },
    withRenewable(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { renewable: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      The token role name. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      The TTL period of the token. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withWrappingTtl':: { 'function': { help: |||
      The TTL period of the wrapped token. 
    ||| } },
    withWrappingTtl(value):: self {
      resource+: {
        vault_token+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#client_token':: { 'function': { help: |||
        The client token. 
      ||| } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      '#display_name':: { 'function': { help: |||
        The display name of the token. 
      ||| } },
      display_name(suffix=''):: refSelf.plain('.display_name%s' % suffix),
      '#explicit_max_ttl':: { 'function': { help: |||
        The explicit max TTL of the token. 
      ||| } },
      explicit_max_ttl(suffix=''):: refSelf.plain('.explicit_max_ttl%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        The token lease duration. 
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_started':: { 'function': { help: |||
        The token lease started on. 
      ||| } },
      lease_started(suffix=''):: refSelf.plain('.lease_started%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata to be associated with the token. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#no_default_policy':: { 'function': { help: |||
        Flag to disable the default policy. 
      ||| } },
      no_default_policy(suffix=''):: refSelf.plain('.no_default_policy%s' % suffix),
      '#no_parent':: { 'function': { help: |||
        Flag to create a token without parent. 
      ||| } },
      no_parent(suffix=''):: refSelf.plain('.no_parent%s' % suffix),
      '#num_uses':: { 'function': { help: |||
        The number of allowed uses of the token. 
      ||| } },
      num_uses(suffix=''):: refSelf.plain('.num_uses%s' % suffix),
      '#period':: { 'function': { help: |||
        The period of the token. 
      ||| } },
      period(suffix=''):: refSelf.plain('.period%s' % suffix),
      '#policies':: { 'function': { help: |||
        List of policies. 
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renew_increment':: { 'function': { help: |||
        The renew increment. 
      ||| } },
      renew_increment(suffix=''):: refSelf.plain('.renew_increment%s' % suffix),
      '#renew_min_lease':: { 'function': { help: |||
        The minimum lease to renew token. 
      ||| } },
      renew_min_lease(suffix=''):: refSelf.plain('.renew_min_lease%s' % suffix),
      '#renewable':: { 'function': { help: |||
        Flag to allow the token to be renewed 
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#role_name':: { 'function': { help: |||
        The token role name. 
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#ttl':: { 'function': { help: |||
        The TTL period of the token. 
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#wrapped_token':: { 'function': { help: |||
        The client wrapped token. 
      ||| } },
      wrapped_token(suffix=''):: refSelf.plain('.wrapped_token%s' % suffix),
      '#wrapping_accessor':: { 'function': { help: |||
        The client wrapping accessor. 
      ||| } },
      wrapping_accessor(suffix=''):: refSelf.plain('.wrapping_accessor%s' % suffix),
      '#wrapping_ttl':: { 'function': { help: |||
        The TTL period of the wrapped token. 
      ||| } },
      wrapping_ttl(suffix=''):: refSelf.plain('.wrapping_ttl%s' % suffix),
    },
  },
}
