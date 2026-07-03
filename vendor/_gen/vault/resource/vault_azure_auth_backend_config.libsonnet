{
  new(terraformName, resource, tenant_id):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_azure_auth_backend_config+: {
        [terraformName]+: {
          resource: resource,
          tenant_id: tenant_id,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { backend: value } },
      },
    },
    '#withClientId':: { 'function': { help: |||
      The client id for credentials to query the Azure APIs. Currently read permissions to query compute resources are required. 
    ||| } },
    withClientId(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_id: value } },
      },
    },
    '#withClientSecret':: { 'function': { help: |||
      The client secret for credentials to query the Azure APIs. Mutually exclusive with 'client_secret_wo'. 
    ||| } },
    withClientSecret(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_secret: value } },
      },
    },
    '#withClientSecretWo':: { 'function': { help: |||
      The client secret for credentials to query the Azure APIs. This field is write-only and will never be stored in state. Mutually exclusive with 'client_secret'. Requires 'client_secret_wo_version' to trigger updates. 
    ||| } },
    withClientSecretWo(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_secret_wo: value } },
      },
    },
    '#withClientSecretWoVersion':: { 'function': { help: |||
      Version counter for the write-only client secret. Increment this value to trigger rotation of the client secret. Required when using 'client_secret_wo'. 
    ||| } },
    withClientSecretWoVersion(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_secret_wo_version: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withEnvironment':: { 'function': { help: |||
      The Azure cloud environment. Valid values: AzurePublicCloud, AzureUSGovernmentCloud, AzureChinaCloud, AzureGermanCloud. 
    ||| } },
    withEnvironment(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { environment: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenAudience':: { 'function': { help: |||
      The audience claim value. 
    ||| } },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    '#withIdentityTokenTtl':: { 'function': { help: |||
      The TTL of generated identity tokens in seconds. 
    ||| } },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    '#withMaxRetries':: { 'function': { help: |||
      Maximum number of retries for Azure API requests. Defaults to 3. 
    ||| } },
    withMaxRetries(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { max_retries: value } },
      },
    },
    '#withMaxRetryDelay':: { 'function': { help: |||
      The maximum delay in seconds between retries for Azure API requests. Defaults to 60. 
    ||| } },
    withMaxRetryDelay(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { max_retry_delay: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withResource':: { 'function': { help: |||
      The configured URL for the application registered in Azure Active Directory. 
    ||| } },
    withResource(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { resource: value } },
      },
    },
    '#withRetryDelay':: { 'function': { help: |||
      The initial delay in seconds between retries for Azure API requests. Defaults to 4. 
    ||| } },
    withRetryDelay(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { retry_delay: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withTenantId':: { 'function': { help: |||
      The tenant id for the Azure Active Directory organization. 
    ||| } },
    withTenantId(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { tenant_id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_auth_backend_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_id':: { 'function': { help: |||
        The client id for credentials to query the Azure APIs. Currently read permissions to query compute resources are required. 
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        The client secret for credentials to query the Azure APIs. Mutually exclusive with 'client_secret_wo'. 
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#client_secret_wo':: { 'function': { help: |||
        The client secret for credentials to query the Azure APIs. This field is write-only and will never be stored in state. Mutually exclusive with 'client_secret'. Requires 'client_secret_wo_version' to trigger updates. 
      ||| } },
      client_secret_wo(suffix=''):: refSelf.plain('.client_secret_wo%s' % suffix),
      '#client_secret_wo_version':: { 'function': { help: |||
        Version counter for the write-only client secret. Increment this value to trigger rotation of the client secret. Required when using 'client_secret_wo'. 
      ||| } },
      client_secret_wo_version(suffix=''):: refSelf.plain('.client_secret_wo_version%s' % suffix),
      '#disable_automated_rotation':: { 'function': { help: |||
        Stops rotation of the root credential until set to false. 
      ||| } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#environment':: { 'function': { help: |||
        The Azure cloud environment. Valid values: AzurePublicCloud, AzureUSGovernmentCloud, AzureChinaCloud, AzureGermanCloud. 
      ||| } },
      environment(suffix=''):: refSelf.plain('.environment%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_audience':: { 'function': { help: |||
        The audience claim value. 
      ||| } },
      identity_token_audience(suffix=''):: refSelf.plain('.identity_token_audience%s' % suffix),
      '#identity_token_ttl':: { 'function': { help: |||
        The TTL of generated identity tokens in seconds. 
      ||| } },
      identity_token_ttl(suffix=''):: refSelf.plain('.identity_token_ttl%s' % suffix),
      '#max_retries':: { 'function': { help: |||
        Maximum number of retries for Azure API requests. Defaults to 3. 
      ||| } },
      max_retries(suffix=''):: refSelf.plain('.max_retries%s' % suffix),
      '#max_retry_delay':: { 'function': { help: |||
        The maximum delay in seconds between retries for Azure API requests. Defaults to 60. 
      ||| } },
      max_retry_delay(suffix=''):: refSelf.plain('.max_retry_delay%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#resource':: { 'function': { help: |||
        The configured URL for the application registered in Azure Active Directory. 
      ||| } },
      resource(suffix=''):: refSelf.plain('.resource%s' % suffix),
      '#retry_delay':: { 'function': { help: |||
        The initial delay in seconds between retries for Azure API requests. Defaults to 4. 
      ||| } },
      retry_delay(suffix=''):: refSelf.plain('.retry_delay%s' % suffix),
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
      '#tenant_id':: { 'function': { help: |||
        The tenant id for the Azure Active Directory organization. 
      ||| } },
      tenant_id(suffix=''):: refSelf.plain('.tenant_id%s' % suffix),
    },
  },
}
