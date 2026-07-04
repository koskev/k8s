{
  local outerSelf = self,
  new(terraformName, subscription_id, tenant_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_azure_secret_backend+: {
        [terraformName]+: {
          subscription_id: subscription_id,
          tenant_id: tenant_id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { providers: value } },
      },
    },
    '#allowed_managed_keys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#allowed_response_headers':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#audit_non_hmac_request_keys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#audit_non_hmac_response_keys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#client_id':: { 'function': { help: |||
      The client id for credentials to query the Azure APIs. Currently read permissions to query compute resources are required.
    ||| } },
    withClientId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_id: value } },
      },
    },
    '#client_secret':: { 'function': { help: |||
      The client secret for credentials to query the Azure APIs
    ||| } },
    withClientSecret(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_secret: value } },
      },
    },
    '#client_secret_wo':: { 'function': { help: |||
      The client secret for credentials to query the Azure APIs. This is a write-only field and will not be read back from Vault.
    ||| } },
    withClientSecretWo(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_secret_wo: value } },
      },
    },
    '#client_secret_wo_version':: { 'function': { help: |||
      A version counter for the write-only client_secret_wo field. Incrementing this value will trigger an update to the client secret.
    ||| } },
    withClientSecretWoVersion(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { client_secret_wo_version: value } },
      },
    },
    '#default_lease_ttl_seconds':: { 'function': { help: |||
      Default lease duration for tokens and secrets in seconds
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#delegated_auth_accessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#description':: { 'function': { help: |||
      Human-friendly description of the mount for the backend.
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#disable_automated_rotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false.
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#disable_remount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates.
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#environment':: { 'function': { help: |||
      The Azure cloud environment. Valid values: AzurePublicCloud, AzureUSGovernmentCloud, AzureChinaCloud, AzureGermanCloud.
    ||| } },
    withEnvironment(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { environment: value } },
      },
    },
    '#external_entropy_access':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#force_no_cache':: { 'function': { help: |||
      If set to true, disables caching.
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#identity_token_audience':: { 'function': { help: |||
      The audience claim value.
    ||| } },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    '#identity_token_key':: { 'function': { help: |||
      The key to use for signing identity tokens.
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#identity_token_ttl':: { 'function': { help: |||
      The TTL of generated identity tokens in seconds.
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#listing_visibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#local':: { 'function': { help: |||
      Local mount flag that can be explicitly set to true to enforce local mount in HA environment
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#max_lease_ttl_seconds':: { 'function': { help: |||
      Maximum possible lease duration for tokens and secrets in seconds
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#options':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#passthrough_request_headers':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#path':: { 'function': { help: |||
      Path to mount the backend at.
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#plugin_version':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#root_password_ttl':: { 'function': { help: |||
      The TTL in seconds of the root password in Azure when rotate-root generates a new client secret
    ||| } },
    withRootPasswordTtl(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { root_password_ttl: value } },
      },
    },
    '#rotation_period':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#rotation_schedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#rotation_window':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#seal_wrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#subscription_id':: { 'function': { help: |||
      The subscription id for the Azure Active Directory.
    ||| } },
    withSubscriptionId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { subscription_id: value } },
      },
    },
    '#tenant_id':: { 'function': { help: |||
      The tenant id for the Azure Active Directory organization.
    ||| } },
    withTenantId(value):: self {
      resource+: {
        vault_azure_secret_backend+: { [terraformName]+: { tenant_id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
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
      '#client_id':: { 'function': { help: |||
        The client id for credentials to query the Azure APIs. Currently read permissions to query compute resources are required.
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        The client secret for credentials to query the Azure APIs
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#client_secret_wo':: { 'function': { help: |||
        The client secret for credentials to query the Azure APIs. This is a write-only field and will not be read back from Vault.
      ||| } },
      client_secret_wo(suffix=''):: refSelf.plain('.client_secret_wo%s' % suffix),
      '#client_secret_wo_version':: { 'function': { help: |||
        A version counter for the write-only client_secret_wo field. Incrementing this value will trigger an update to the client secret.
      ||| } },
      client_secret_wo_version(suffix=''):: refSelf.plain('.client_secret_wo_version%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': { help: |||
        Default lease duration for tokens and secrets in seconds
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
      '#environment':: { 'function': { help: |||
        The Azure cloud environment. Valid values: AzurePublicCloud, AzureUSGovernmentCloud, AzureChinaCloud, AzureGermanCloud.
      ||| } },
      environment(suffix=''):: refSelf.plain('.environment%s' % suffix),
      '#external_entropy_access':: { 'function': { help: |||
        Enable the secrets engine to access Vault's external entropy source
      ||| } },
      external_entropy_access(suffix=''):: refSelf.plain('.external_entropy_access%s' % suffix),
      '#force_no_cache':: { 'function': { help: |||
        If set to true, disables caching.
      ||| } },
      force_no_cache(suffix=''):: refSelf.plain('.force_no_cache%s' % suffix),
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
        Local mount flag that can be explicitly set to true to enforce local mount in HA environment
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': { help: |||
        Maximum possible lease duration for tokens and secrets in seconds
      ||| } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
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
      '#root_password_ttl':: { 'function': { help: |||
        The TTL in seconds of the root password in Azure when rotate-root generates a new client secret
      ||| } },
      root_password_ttl(suffix=''):: refSelf.plain('.root_password_ttl%s' % suffix),
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
      '#subscription_id':: { 'function': { help: |||
        The subscription id for the Azure Active Directory.
      ||| } },
      subscription_id(suffix=''):: refSelf.plain('.subscription_id%s' % suffix),
      '#tenant_id':: { 'function': { help: |||
        The tenant id for the Azure Active Directory organization.
      ||| } },
      tenant_id(suffix=''):: refSelf.plain('.tenant_id%s' % suffix),
    },
  },
}
