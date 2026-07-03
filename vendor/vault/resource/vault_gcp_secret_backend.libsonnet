{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_secret_backend+: { [terraformName]+: {
      } },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withCredentialsWo(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withCredentials(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { credentials: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withServiceAccountEmail(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { service_account_email: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_gcp_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
