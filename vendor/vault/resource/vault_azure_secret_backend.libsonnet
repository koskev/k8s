{
  new(terraformName, tenant_id, subscription_id):: {
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend+: { [terraformName]+: {
        tenant_id: tenant_id,
        subscription_id: subscription_id,
      } },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withRootPasswordTtl(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { root_password_ttl: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withEnvironment(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { environment: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withClientSecretWoVersion(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_secret_wo_version: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_id: value } },
      },
    },
    withClientSecretWo(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_secret_wo: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withTenantId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { tenant_id: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withClientSecret(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_secret: value } },
      },
    },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    withSubscriptionId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { subscription_id: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
  },
}
