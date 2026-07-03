{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_quota_config+: { [terraformName]+: {
      } },
    },
    withRateLimitExemptPaths(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { rate_limit_exempt_paths: value } },
      },
    },
    withEnableRateLimitAuditLogging(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { enable_rate_limit_audit_logging: value } },
      },
    },
    withAbsoluteRateLimitExemptPaths(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { absolute_rate_limit_exempt_paths: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withEnableRateLimitResponseHeaders(value):: self {
      resource+: {
        vault_quota_config+: { [terraformName]+: { enable_rate_limit_response_headers: value } },
      },
    },
  },
}
