{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_aws_secret_backend+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAccessKey':: { 'function': { help: |||
      The AWS Access Key ID to use when generating new credentials. 
    ||| } },
    withAccessKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { access_key: value } },
      },
    },
    '#withAllowedManagedKeys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds':: { 'function': { help: |||
      Default lease duration for secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache':: { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    '#withIamEndpoint':: { 'function': { help: |||
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
    '#withIdentityTokenAudience':: { 'function': { help: |||
      The audience claim value. 
    ||| } },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    '#withIdentityTokenKey':: { 'function': { help: |||
      The key to use for signing identity tokens. 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withIdentityTokenTtl':: { 'function': { help: |||
      The TTL of generated identity tokens in seconds. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withListingVisibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Specifies if the secret backend is local only 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withMaxRetries':: { 'function': { help: |||
      Number of max retries the client should use for recoverable errors. 
    ||| } },
    withMaxRetries(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { max_retries: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path to mount the backend at. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPluginVersion':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withRegion':: { 'function': { help: |||
      The AWS region to make API calls against. Defaults to us-east-1. 
    ||| } },
    withRegion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { region: value } },
      },
    },
    '#withRoleArn':: { 'function': { help: |||
      Role ARN to assume for plugin identity token federation. 
    ||| } },
    withRoleArn(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSealWrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withSecretKey':: { 'function': { help: |||
      The AWS Secret Access Key to use when generating new credentials. 
    ||| } },
    withSecretKey(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key: value } },
      },
    },
    '#withSecretKeyWo':: { 'function': { help: |||
      The AWS Secret Access Key to use when generating new credentials. This is a write-only field and will not be read back from Vault. 
    ||| } },
    withSecretKeyWo(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key_wo: value } },
      },
    },
    '#withSecretKeyWoVersion':: { 'function': { help: |||
      A version counter for the write-only secret_key_wo field. Incrementing this value will trigger an update to the secret_key. 
    ||| } },
    withSecretKeyWoVersion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { secret_key_wo_version: value } },
      },
    },
    '#withStsEndpoint':: { 'function': { help: |||
      Specifies a custom HTTP STS endpoint to use. 
    ||| } },
    withStsEndpoint(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_endpoint: value } },
      },
    },
    '#withStsFallbackEndpoints':: { 'function': { help: |||
      Specifies a list of custom STS fallback endpoints to use (in order). 
    ||| } },
    withStsFallbackEndpoints(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_fallback_endpoints: value } },
      },
    },
    '#withStsFallbackRegions':: { 'function': { help: |||
      Specifies a list of custom STS fallback regions to use (in order). 
    ||| } },
    withStsFallbackRegions(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_fallback_regions: value } },
      },
    },
    '#withStsRegion':: { 'function': { help: |||
      Specifies a custom STS region to use. 
    ||| } },
    withStsRegion(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { sts_region: value } },
      },
    },
    '#withUsernameTemplate':: { 'function': { help: |||
      Template describing how dynamic usernames are generated. 
    ||| } },
    withUsernameTemplate(value):: self {
      resource+: {
        vault_aws_secret_backend+: { [terraformName]+: { username_template: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key':: { 'function': { help: |||
        The AWS Access Key ID to use when generating new credentials. 
      ||| } },
      access_key(suffix=''):: refSelf.plain('.access_key%s' % suffix),
      '#accessor':: { 'function': { help: |||
        Accessor of the mount 
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#allowed_managed_keys':: { 'function': { help: |||
        List of managed key registry entry names that the mount in question is allowed to access 
      ||| } },
      allowed_managed_keys(suffix=''):: refSelf.plain('.allowed_managed_keys%s' % suffix),
      '#allowed_response_headers':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin 
      ||| } },
      allowed_response_headers(suffix=''):: refSelf.plain('.allowed_response_headers%s' % suffix),
      '#audit_non_hmac_request_keys':: { 'function': { help: |||
        Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
      ||| } },
      audit_non_hmac_request_keys(suffix=''):: refSelf.plain('.audit_non_hmac_request_keys%s' % suffix),
      '#audit_non_hmac_response_keys':: { 'function': { help: |||
        Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
      ||| } },
      audit_non_hmac_response_keys(suffix=''):: refSelf.plain('.audit_non_hmac_response_keys%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': { help: |||
        Default lease duration for secrets in seconds 
      ||| } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
      '#delegated_auth_accessors':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin 
      ||| } },
      delegated_auth_accessors(suffix=''):: refSelf.plain('.delegated_auth_accessors%s' % suffix),
      '#description':: { 'function': { help: |||
        Human-friendly description of the mount for the backend. 
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_automated_rotation':: { 'function': { help: |||
        Stops rotation of the root credential until set to false. 
      ||| } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates. 
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#external_entropy_access':: { 'function': { help: |||
        Enable the secrets engine to access Vault's external entropy source 
      ||| } },
      external_entropy_access(suffix=''):: refSelf.plain('.external_entropy_access%s' % suffix),
      '#force_no_cache':: { 'function': { help: |||
        If set to true, disables caching. 
      ||| } },
      force_no_cache(suffix=''):: refSelf.plain('.force_no_cache%s' % suffix),
      '#iam_endpoint':: { 'function': { help: |||
        Specifies a custom HTTP IAM endpoint to use. 
      ||| } },
      iam_endpoint(suffix=''):: refSelf.plain('.iam_endpoint%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_audience':: { 'function': { help: |||
        The audience claim value. 
      ||| } },
      identity_token_audience(suffix=''):: refSelf.plain('.identity_token_audience%s' % suffix),
      '#identity_token_key':: { 'function': { help: |||
        The key to use for signing identity tokens. 
      ||| } },
      identity_token_key(suffix=''):: refSelf.plain('.identity_token_key%s' % suffix),
      '#identity_token_ttl':: { 'function': { help: |||
        The TTL of generated identity tokens in seconds. 
      ||| } },
      identity_token_ttl(suffix=''):: refSelf.plain('.identity_token_ttl%s' % suffix),
      '#listing_visibility':: { 'function': { help: |||
        Specifies whether to show this mount in the UI-specific listing endpoint 
      ||| } },
      listing_visibility(suffix=''):: refSelf.plain('.listing_visibility%s' % suffix),
      '#local':: { 'function': { help: |||
        Specifies if the secret backend is local only 
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': { help: |||
        Maximum possible lease duration for secrets in seconds 
      ||| } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
      '#max_retries':: { 'function': { help: |||
        Number of max retries the client should use for recoverable errors. 
      ||| } },
      max_retries(suffix=''):: refSelf.plain('.max_retries%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#options':: { 'function': { help: |||
        Specifies mount type specific options that are passed to the backend 
      ||| } },
      options(suffix=''):: refSelf.plain('.options%s' % suffix),
      '#passthrough_request_headers':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin 
      ||| } },
      passthrough_request_headers(suffix=''):: refSelf.plain('.passthrough_request_headers%s' % suffix),
      '#path':: { 'function': { help: |||
        Path to mount the backend at. 
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#plugin_version':: { 'function': { help: |||
        Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
      ||| } },
      plugin_version(suffix=''):: refSelf.plain('.plugin_version%s' % suffix),
      '#region':: { 'function': { help: |||
        The AWS region to make API calls against. Defaults to us-east-1. 
      ||| } },
      region(suffix=''):: refSelf.plain('.region%s' % suffix),
      '#role_arn':: { 'function': { help: |||
        Role ARN to assume for plugin identity token federation. 
      ||| } },
      role_arn(suffix=''):: refSelf.plain('.role_arn%s' % suffix),
      '#rotation_period':: { 'function': { help: |||
        The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
      ||| } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': { help: |||
        The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
      ||| } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': { help: |||
        The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
      ||| } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#seal_wrap':: { 'function': { help: |||
        Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
      ||| } },
      seal_wrap(suffix=''):: refSelf.plain('.seal_wrap%s' % suffix),
      '#secret_key':: { 'function': { help: |||
        The AWS Secret Access Key to use when generating new credentials. 
      ||| } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
      '#secret_key_wo':: { 'function': { help: |||
        The AWS Secret Access Key to use when generating new credentials. This is a write-only field and will not be read back from Vault. 
      ||| } },
      secret_key_wo(suffix=''):: refSelf.plain('.secret_key_wo%s' % suffix),
      '#secret_key_wo_version':: { 'function': { help: |||
        A version counter for the write-only secret_key_wo field. Incrementing this value will trigger an update to the secret_key. 
      ||| } },
      secret_key_wo_version(suffix=''):: refSelf.plain('.secret_key_wo_version%s' % suffix),
      '#sts_endpoint':: { 'function': { help: |||
        Specifies a custom HTTP STS endpoint to use. 
      ||| } },
      sts_endpoint(suffix=''):: refSelf.plain('.sts_endpoint%s' % suffix),
      '#sts_fallback_endpoints':: { 'function': { help: |||
        Specifies a list of custom STS fallback endpoints to use (in order). 
      ||| } },
      sts_fallback_endpoints(suffix=''):: refSelf.plain('.sts_fallback_endpoints%s' % suffix),
      '#sts_fallback_regions':: { 'function': { help: |||
        Specifies a list of custom STS fallback regions to use (in order). 
      ||| } },
      sts_fallback_regions(suffix=''):: refSelf.plain('.sts_fallback_regions%s' % suffix),
      '#sts_region':: { 'function': { help: |||
        Specifies a custom STS region to use. 
      ||| } },
      sts_region(suffix=''):: refSelf.plain('.sts_region%s' % suffix),
      '#username_template':: { 'function': { help: |||
        Template describing how dynamic usernames are generated. 
      ||| } },
      username_template(suffix=''):: refSelf.plain('.username_template%s' % suffix),
    },
  },
}
