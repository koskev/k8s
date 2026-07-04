{
  local outerSelf = self,
  new(terraformName, name, rate):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_quota_rate_limit+: {
        [terraformName]+: {
          name: name,
          rate: rate,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBlockInterval':: { 'function': { help: |||
      If set, when a client reaches a rate limit threshold, the client will be prohibited from any further requests until after the 'block_interval' in seconds has elapsed.
    ||| } },
    withBlockInterval(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { block_interval: value } },
      },
    },
    '#withGroupBy':: { 'function': { help: |||
      Attribute used to group requests for rate limiting. Limits are enforced independently for each group. Valid group_by modes are: 1) "ip" that groups requests by their source IP address (group_by defaults to ip if unset); 2) "none" that groups all requests that match the rate limit quota rule together; 3) "entity_then_ip" that groups requests by their entity ID for authenticated requests that carry one, or by their IP for unauthenticated requests (or requests whose authentication is not connected to an entity); and 4) "entity_then_none" which also groups requests by their entity ID when available, but the rest is all grouped together (i.e. unauthenticated or with authentication not connected to an entity).
    ||| } },
    withGroupBy(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { group_by: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { id: value } },
      },
    },
    '#withInheritable':: { 'function': { help: |||
      If set to true on a quota where path is set to a namespace, the same quota will be cumulatively applied to all child namespace. The inheritable parameter cannot be set to true if the path does not specify a namespace. Only the quotas associated with the root namespace are inheritable by default.
    ||| } },
    withInheritable(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { inheritable: value } },
      },
    },
    '#withInterval':: { 'function': { help: |||
      The duration in seconds to enforce rate limiting for.
    ||| } },
    withInterval(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { interval: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the quota.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path of the mount or namespace to apply the quota. A blank path configures a global rate limit quota.
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { path: value } },
      },
    },
    '#withRate':: { 'function': { help: |||
      The maximum number of requests at any given second to be allowed by the quota rule. The rate must be positive.
    ||| } },
    withRate(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { rate: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      If set on a quota where path is set to an auth mount with a concept of roles (such as /auth/approle/), this will make the quota restrict login requests to that mount that are made with the specified role.
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { role: value } },
      },
    },
    '#withSecondaryRate':: { 'function': { help: |||
      Only available when using the "entity_then_ip" or "entity_then_none" group_by modes. This is the rate limit applied to the requests that fall under the "ip" or "none" groupings, while the authenticated requests that contain an entity ID are subject to the "rate" field instead. Defaults to the same value as "rate".
    ||| } },
    withSecondaryRate(value):: self {
      resource+: {
        vault_quota_rate_limit+: { [terraformName]+: { secondary_rate: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_quota_rate_limit.%s%s }' % [terraformName, suffix],
    fields:: {
      '#block_interval':: { 'function': { help: |||
        If set, when a client reaches a rate limit threshold, the client will be prohibited from any further requests until after the 'block_interval' in seconds has elapsed.
      ||| } },
      block_interval(suffix=''):: refSelf.plain('.block_interval%s' % suffix),
      '#group_by':: { 'function': { help: |||
        Attribute used to group requests for rate limiting. Limits are enforced independently for each group. Valid group_by modes are: 1) "ip" that groups requests by their source IP address (group_by defaults to ip if unset); 2) "none" that groups all requests that match the rate limit quota rule together; 3) "entity_then_ip" that groups requests by their entity ID for authenticated requests that carry one, or by their IP for unauthenticated requests (or requests whose authentication is not connected to an entity); and 4) "entity_then_none" which also groups requests by their entity ID when available, but the rest is all grouped together (i.e. unauthenticated or with authentication not connected to an entity).
      ||| } },
      group_by(suffix=''):: refSelf.plain('.group_by%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#inheritable':: { 'function': { help: |||
        If set to true on a quota where path is set to a namespace, the same quota will be cumulatively applied to all child namespace. The inheritable parameter cannot be set to true if the path does not specify a namespace. Only the quotas associated with the root namespace are inheritable by default.
      ||| } },
      inheritable(suffix=''):: refSelf.plain('.inheritable%s' % suffix),
      '#interval':: { 'function': { help: |||
        The duration in seconds to enforce rate limiting for.
      ||| } },
      interval(suffix=''):: refSelf.plain('.interval%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the quota.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Path of the mount or namespace to apply the quota. A blank path configures a global rate limit quota.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#rate':: { 'function': { help: |||
        The maximum number of requests at any given second to be allowed by the quota rule. The rate must be positive.
      ||| } },
      rate(suffix=''):: refSelf.plain('.rate%s' % suffix),
      '#role':: { 'function': { help: |||
        If set on a quota where path is set to an auth mount with a concept of roles (such as /auth/approle/), this will make the quota restrict login requests to that mount that are made with the specified role.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#secondary_rate':: { 'function': { help: |||
        Only available when using the "entity_then_ip" or "entity_then_none" group_by modes. This is the rate limit applied to the requests that fall under the "ip" or "none" groupings, while the authenticated requests that contain an entity ID are subject to the "rate" field instead. Defaults to the same value as "rate".
      ||| } },
      secondary_rate(suffix=''):: refSelf.plain('.secondary_rate%s' % suffix),
    },
  },
}
