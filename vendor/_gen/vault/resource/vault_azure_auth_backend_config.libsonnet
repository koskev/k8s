{
  new(terraformName, resource, tenant_id):: {
    _type:: 'tf',
    resource+: {
      vault_azure_auth_backend_config+: { [terraformName]+: {
        resource: resource,
        tenant_id: tenant_id,
      } },
    },
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
}
