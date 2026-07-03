{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend+: { [terraformName]+: {
      } },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withIamEndpoint(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { iam_endpoint: value } },
      },
    },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withMaxRetries(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { max_retries: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withStsFallbackEndpoints(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_fallback_endpoints: value } },
      },
    },
    withStsRegion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_region: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withSecretKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key: value } },
      },
    },
    withStsEndpoint(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_endpoint: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withUsernameTemplate(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { username_template: value } },
      },
    },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withRoleArn(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { role_arn: value } },
      },
    },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
    withRegion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { region: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withStsFallbackRegions(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_fallback_regions: value } },
      },
    },
    withAccessKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { access_key: value } },
      },
    },
  },
}
