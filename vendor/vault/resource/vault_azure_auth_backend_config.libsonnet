{
  new(terraformName, resource, tenant_id):: {
    _type:: 'tf',
    resource+: {
      vault_azure_auth_backend_config+: { [terraformName]+: {
        resource: resource,
        tenant_id: tenant_id,
      } },
    },
    withRetryDelay(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { retry_delay: value } },
      },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withIdentityTokenTtl(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { identity_token_ttl: value } },
      },
    },
    withIdentityTokenAudience(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { identity_token_audience: value } },
      },
    },
    withResource(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { resource: value } },
      },
    },
    withMaxRetryDelay(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { max_retry_delay: value } },
      },
    },
    withClientId(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_id: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { backend: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withTenantId(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { tenant_id: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { id: value } },
      },
    },
    withEnvironment(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { environment: value } },
      },
    },
    withClientSecretWoVersion(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_secret_wo_version: value } },
      },
    },
    withClientSecret(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_secret: value } },
      },
    },
    withMaxRetries(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { max_retries: value } },
      },
    },
    withClientSecretWo(value):: self {
      resource+: {
        vault_azure_auth_backend_config+: { [terraformName]+: { client_secret_wo: value } },
      },
    },
  },
}
