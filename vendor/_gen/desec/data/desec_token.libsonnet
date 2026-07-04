{
  '#new':: { 'function': { help: |||
    Retrieves information about a specific deSEC API token by its ID. The token secret value is never returned by this data source.
  ||| } },
  local outerSelf = self,
  new(terraformName, id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      desec_token+: {
        [terraformName]+: {
          id: id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { providers: value } },
      },
    },
    '#id':: { 'function': { help: |||
      The UUID of the token to look up.
    ||| } },
    withId(value):: self {
      data+: {
        desec_token+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_subnets':: { 'function': { help: |||
        List of IP addresses or CIDR subnets that may authenticate using this token.
      ||| } },
      allowed_subnets(suffix=''):: refSelf.plain('.allowed_subnets%s' % suffix),
      '#auto_policy':: { 'function': { help: |||
        Whether the token automatically creates a permissive scoping policy for each domain it creates.
      ||| } },
      auto_policy(suffix=''):: refSelf.plain('.auto_policy%s' % suffix),
      '#created':: { 'function': { help: |||
        Timestamp of token creation in ISO 8601 format.
      ||| } },
      created(suffix=''):: refSelf.plain('.created%s' % suffix),
      '#id':: { 'function': { help: |||
        The UUID of the token to look up.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#is_valid':: { 'function': { help: |||
        Whether the token is currently valid (not expired).
      ||| } },
      is_valid(suffix=''):: refSelf.plain('.is_valid%s' % suffix),
      '#last_used':: { 'function': { help: |||
        Timestamp of when the token was last used, or `null` if it has never been used.
      ||| } },
      last_used(suffix=''):: refSelf.plain('.last_used%s' % suffix),
      '#max_age':: { 'function': { help: |||
        Maximum token lifetime as a duration string, or `null` if no age limit is set.
      ||| } },
      max_age(suffix=''):: refSelf.plain('.max_age%s' % suffix),
      '#max_unused_period':: { 'function': { help: |||
        Maximum allowed period of disuse, or `null` if no limit is set.
      ||| } },
      max_unused_period(suffix=''):: refSelf.plain('.max_unused_period%s' % suffix),
      '#name':: { 'function': { help: |||
        Human-readable token name.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#owner':: { 'function': { help: |||
        Email address of the deSEC account that owns this token.
      ||| } },
      owner(suffix=''):: refSelf.plain('.owner%s' % suffix),
      '#perm_create_domain':: { 'function': { help: |||
        Whether this token may create new domains.
      ||| } },
      perm_create_domain(suffix=''):: refSelf.plain('.perm_create_domain%s' % suffix),
      '#perm_delete_domain':: { 'function': { help: |||
        Whether this token may delete domains.
      ||| } },
      perm_delete_domain(suffix=''):: refSelf.plain('.perm_delete_domain%s' % suffix),
      '#perm_manage_tokens':: { 'function': { help: |||
        Whether this token may manage tokens.
      ||| } },
      perm_manage_tokens(suffix=''):: refSelf.plain('.perm_manage_tokens%s' % suffix),
    },
  },
}
