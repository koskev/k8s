{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Provides a resource to manage the singleton Vault quotas configuration at `/sys/quotas/config`.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_quota_config+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { [name]: value } },
    } },
    '#withAbsoluteRateLimitExemptPaths':: { 'function': {
      help:
        |||
          Absolute paths exempt from all rate limit quotas, qualified from the root of the namespace hierarchy. This field is effectively root-managed; administrative namespaces can read returned values but cannot reliably manage them. Order is not significant.
        |||,
    } },
    withAbsoluteRateLimitExemptPaths(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { absolute_rate_limit_exempt_paths: value } },
    } },
    '#withEnableRateLimitAuditLogging':: { 'function': {
      help:
        |||
          Enables audit logging for requests rejected by rate limit quotas.
        |||,
    } },
    withEnableRateLimitAuditLogging(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { enable_rate_limit_audit_logging: value } },
    } },
    '#withEnableRateLimitResponseHeaders':: { 'function': {
      help:
        |||
          Enables rate limit response headers on HTTP responses.
        |||,
    } },
    withEnableRateLimitResponseHeaders(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { enable_rate_limit_response_headers: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { namespace: value } },
    } },
    '#withRateLimitExemptPaths':: { 'function': {
      help:
        |||
          Paths exempt from rate limit quotas relative to the current namespace context. This endpoint is only callable from the root or an administrative namespace, and exemption updates are effectively root-managed. Order is not significant.
        |||,
    } },
    withRateLimitExemptPaths(value):: self { resource+: {
      vault_quota_config+: { [terraformName]+: { rate_limit_exempt_paths: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_quota_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#absolute_rate_limit_exempt_paths':: { 'function': {
        help:
          |||
            Absolute paths exempt from all rate limit quotas, qualified from the root of the namespace hierarchy. This field is effectively root-managed; administrative namespaces can read returned values but cannot reliably manage them. Order is not significant.
          |||,
      } },
      absolute_rate_limit_exempt_paths(suffix=''):: refSelf.plain('.absolute_rate_limit_exempt_paths%s' % suffix),
      '#enable_rate_limit_audit_logging':: { 'function': {
        help:
          |||
            Enables audit logging for requests rejected by rate limit quotas.
          |||,
      } },
      enable_rate_limit_audit_logging(suffix=''):: refSelf.plain('.enable_rate_limit_audit_logging%s' % suffix),
      '#enable_rate_limit_response_headers':: { 'function': {
        help:
          |||
            Enables rate limit response headers on HTTP responses.
          |||,
      } },
      enable_rate_limit_response_headers(suffix=''):: refSelf.plain('.enable_rate_limit_response_headers%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#rate_limit_exempt_paths':: { 'function': {
        help:
          |||
            Paths exempt from rate limit quotas relative to the current namespace context. This endpoint is only callable from the root or an administrative namespace, and exemption updates are effectively root-managed. Order is not significant.
          |||,
      } },
      rate_limit_exempt_paths(suffix=''):: refSelf.plain('.rate_limit_exempt_paths%s' % suffix),

    },

  },

}
