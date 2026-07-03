{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend+: { [terraformName]+: {
      } },
    },
    '#withAccessKey': { 'function': { help: |||
      The AWS Access Key ID to use when generating new credentials. 
    ||| } },
    withAccessKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { access_key: value } },
      },
    },
    '#withAccessor': { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAllowedManagedKeys': { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds': { 'function': { help: |||
      Default lease duration for secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableAutomatedRotation': { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess': { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache': { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    '#withIamEndpoint': { 'function': { help: |||
      Specifies a custom HTTP IAM endpoint to use. 
    ||| } },
    withIamEndpoint(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { iam_endpoint: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenAudience': { 'function': { help: |||
      The audience claim value. 
    ||| } },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    '#withIdentityTokenKey': { 'function': { help: |||
      The key to use for signing identity tokens. 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withIdentityTokenTtl': { 'function': { help: |||
      The TTL of generated identity tokens in seconds. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withListingVisibility': { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the secret backend is local only 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds': { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withMaxRetries': { 'function': { help: |||
      Number of max retries the client should use for recoverable errors. 
    ||| } },
    withMaxRetries(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { max_retries: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions': { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path to mount the backend at. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPluginVersion': { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withRegion': { 'function': { help: |||
      The AWS region to make API calls against. Defaults to us-east-1. 
    ||| } },
    withRegion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { region: value } },
      },
    },
    '#withRoleArn': { 'function': { help: |||
      Role ARN to assume for plugin identity token federation. 
    ||| } },
    withRoleArn(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withRotationPeriod': { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule': { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow': { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSealWrap': { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withSecretKey': { 'function': { help: |||
      The AWS Secret Access Key to use when generating new credentials. 
    ||| } },
    withSecretKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withSecretKeyWo': { 'function': { help: |||
      The AWS Secret Access Key to use when generating new credentials. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
    '#withSecretKeyWoVersion': { 'function': { help: |||
      A version counter for the write-only secret_key_wo field. Incrementing this value will trigger an update to the secret_key. 
    ||| } },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
    '#withStsEndpoint': { 'function': { help: |||
      Specifies a custom HTTP STS endpoint to use. 
    ||| } },
    withStsEndpoint(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_endpoint: value } },
      },
    },
    '#withStsFallbackEndpoints': { 'function': { help: |||
      Specifies a list of custom STS fallback endpoints to use (in order). 
    ||| } },
    withStsFallbackEndpoints(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_fallback_endpoints: value } },
      },
    },
    '#withStsFallbackRegions': { 'function': { help: |||
      Specifies a list of custom STS fallback regions to use (in order). 
    ||| } },
    withStsFallbackRegions(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_fallback_regions: value } },
      },
    },
    '#withStsRegion': { 'function': { help: |||
      Specifies a custom STS region to use. 
    ||| } },
    withStsRegion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_region: value } },
      },
    },
    '#withUsernameTemplate': { 'function': { help: |||
      Template describing how dynamic usernames are generated. 
    ||| } },
    withUsernameTemplate(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { username_template: value } },
      },
    },
  },
}
