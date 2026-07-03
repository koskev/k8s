{
  new(terraformName, backend, role):: {
    _type:: 'tf',
    data+: {
      vault_azure_access_credentials+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
    withLeaseDuration(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { lease_duration: value } },
      },
    },
    withSubscriptionId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { subscription_id: value } },
      },
    },
    withLeaseStartTime(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { lease_start_time: value } },
      },
    },
    withNumSecondsBetweenTests(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { num_seconds_between_tests: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withLeaseRenewable(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { lease_renewable: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    withValidateCreds(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { validate_creds: value } },
      },
    },
    withEnvironment(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { environment: value } },
      },
    },
    withMaxCredValidationSeconds(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { max_cred_validation_seconds: value } },
      },
    },
    withRole(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
    withTenantId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { tenant_id: value } },
      },
    },
    withLeaseId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { lease_id: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    withClientSecret(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { client_secret: value } },
      },
    },
    withNumSequentialSuccesses(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { num_sequential_successes: value } },
      },
    },
    withClientId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { client_id: value } },
      },
    },
  },
}
