{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages a deSEC API authentication token. The token secret value is only available at creation time and is stored in Terraform state as a sensitive value. After import, the token secret is unavailable.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      desec_token+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      desec_token+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      desec_token+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      desec_token+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      desec_token+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      desec_token+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      desec_token+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      desec_token+: { [terraformName]+: { [name]: value } },
    } },
    '#withAllowedSubnets':: { 'function': {
      help:
        |||
          List of IP addresses or CIDR subnets that may authenticate using this token. Defaults to `["0.0.0.0/0", "::/0"]` (unrestricted).
        |||,
    } },
    withAllowedSubnets(value):: self { resource+: {
      desec_token+: { [terraformName]+: { allowed_subnets: value } },
    } },
    '#withAutoPolicy':: { 'function': {
      help:
        |||
          When `true`, automatically creates a permissive scoping policy for each domain created with this token.
        |||,
    } },
    withAutoPolicy(value):: self { resource+: {
      desec_token+: { [terraformName]+: { auto_policy: value } },
    } },
    '#withMaxAge':: { 'function': {
      help:
        |||
          Maximum token lifetime as a duration string (e.g. `"365 00:00:00"`). Set to `null` for no age limit.
        |||,
    } },
    withMaxAge(value):: self { resource+: {
      desec_token+: { [terraformName]+: { max_age: value } },
    } },
    '#withMaxUnusedPeriod':: { 'function': {
      help:
        |||
          Maximum allowed period of disuse before the token is invalidated (e.g. `"30 00:00:00"`). Set to `null` for no limit.
        |||,
    } },
    withMaxUnusedPeriod(value):: self { resource+: {
      desec_token+: { [terraformName]+: { max_unused_period: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Human-readable token name for reference purposes. Maximum 178 characters.
        |||,
    } },
    withName(value):: self { resource+: {
      desec_token+: { [terraformName]+: { name: value } },
    } },
    '#withPermCreateDomain':: { 'function': {
      help:
        |||
          Whether this token may create new domains.
        |||,
    } },
    withPermCreateDomain(value):: self { resource+: {
      desec_token+: { [terraformName]+: { perm_create_domain: value } },
    } },
    '#withPermDeleteDomain':: { 'function': {
      help:
        |||
          Whether this token may delete domains.
        |||,
    } },
    withPermDeleteDomain(value):: self { resource+: {
      desec_token+: { [terraformName]+: { perm_delete_domain: value } },
    } },
    '#withPermManageTokens':: { 'function': {
      help:
        |||
          Whether this token may manage tokens (list, create, modify, delete).
        |||,
    } },
    withPermManageTokens(value):: self { resource+: {
      desec_token+: { [terraformName]+: { perm_manage_tokens: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ desec_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_subnets':: { 'function': {
        help:
          |||
            List of IP addresses or CIDR subnets that may authenticate using this token. Defaults to `["0.0.0.0/0", "::/0"]` (unrestricted).
          |||,
      } },
      allowed_subnets(suffix=''):: refSelf.plain('.allowed_subnets%s' % suffix),
      '#auto_policy':: { 'function': {
        help:
          |||
            When `true`, automatically creates a permissive scoping policy for each domain created with this token.
          |||,
      } },
      auto_policy(suffix=''):: refSelf.plain('.auto_policy%s' % suffix),
      '#created':: { 'function': {
        help:
          |||
            Timestamp of token creation in ISO 8601 format.
          |||,
      } },
      created(suffix=''):: refSelf.plain('.created%s' % suffix),
      '#id':: { 'function': {
        help:
          |||
            The token's UUID, used as the resource identifier.
          |||,
      } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#is_valid':: { 'function': {
        help:
          |||
            Whether the token is currently valid (not expired).
          |||,
      } },
      is_valid(suffix=''):: refSelf.plain('.is_valid%s' % suffix),
      '#last_used':: { 'function': {
        help:
          |||
            Timestamp of when the token was last used, or `null` if it has never been used.
          |||,
      } },
      last_used(suffix=''):: refSelf.plain('.last_used%s' % suffix),
      '#max_age':: { 'function': {
        help:
          |||
            Maximum token lifetime as a duration string (e.g. `"365 00:00:00"`). Set to `null` for no age limit.
          |||,
      } },
      max_age(suffix=''):: refSelf.plain('.max_age%s' % suffix),
      '#max_unused_period':: { 'function': {
        help:
          |||
            Maximum allowed period of disuse before the token is invalidated (e.g. `"30 00:00:00"`). Set to `null` for no limit.
          |||,
      } },
      max_unused_period(suffix=''):: refSelf.plain('.max_unused_period%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Human-readable token name for reference purposes. Maximum 178 characters.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#owner':: { 'function': {
        help:
          |||
            Email address of the deSEC account that owns this token.
          |||,
      } },
      owner(suffix=''):: refSelf.plain('.owner%s' % suffix),
      '#perm_create_domain':: { 'function': {
        help:
          |||
            Whether this token may create new domains.
          |||,
      } },
      perm_create_domain(suffix=''):: refSelf.plain('.perm_create_domain%s' % suffix),
      '#perm_delete_domain':: { 'function': {
        help:
          |||
            Whether this token may delete domains.
          |||,
      } },
      perm_delete_domain(suffix=''):: refSelf.plain('.perm_delete_domain%s' % suffix),
      '#perm_manage_tokens':: { 'function': {
        help:
          |||
            Whether this token may manage tokens (list, create, modify, delete).
          |||,
      } },
      perm_manage_tokens(suffix=''):: refSelf.plain('.perm_manage_tokens%s' % suffix),
      '#token':: { 'function': {
        help:
          |||
            The token's secret value used to authenticate API requests. Only available immediately after creation; cannot be recovered afterwards. Set to `null` after import.
          |||,
      } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),

    },

  },

}
