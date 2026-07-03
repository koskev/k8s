{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_quota_config+: { [terraformName]+: {
      } },
    },
    '#withAbsoluteRateLimitExemptPaths':: { 'function': { help: |||
      Absolute paths exempt from all rate limit quotas, qualified from the root of the namespace hierarchy. This field is effectively root-managed; administrative namespaces can read returned values but cannot reliably manage them. Order is not significant. 
    ||| } },
    withAbsoluteRateLimitExemptPaths(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { absolute_rate_limit_exempt_paths: value } },
      },
    },
    '#withEnableRateLimitAuditLogging':: { 'function': { help: |||
      Enables audit logging for requests rejected by rate limit quotas. 
    ||| } },
    withEnableRateLimitAuditLogging(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { enable_rate_limit_audit_logging: value } },
      },
    },
    '#withEnableRateLimitResponseHeaders':: { 'function': { help: |||
      Enables rate limit response headers on HTTP responses. 
    ||| } },
    withEnableRateLimitResponseHeaders(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { enable_rate_limit_response_headers: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRateLimitExemptPaths':: { 'function': { help: |||
      Paths exempt from rate limit quotas relative to the current namespace context. This endpoint is only callable from the root or an administrative namespace, and exemption updates are effectively root-managed. Order is not significant. 
    ||| } },
    withRateLimitExemptPaths(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { rate_limit_exempt_paths: value } },
      },
    },
  },
}
