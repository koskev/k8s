{
  local outerSelf = self,
  new(terraformName, backend, role):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_azure_access_credentials+: {
        [terraformName]+: {
          backend: backend,
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Azure Secret Backend to read credentials from.
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    '#withEnvironment':: { 'function': { help: |||
      The Azure environment to use during credential validation.
      Defaults to the Azure Public Cloud.
      Some possible values: AzurePublicCloud, AzureUSGovernmentCloud
    ||| } },
    withEnvironment(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { environment: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxCredValidationSeconds':: { 'function': { help: |||
      If 'validate_creds' is true, the number of seconds after which to give up validating credentials.
    ||| } },
    withMaxCredValidationSeconds(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { max_cred_validation_seconds: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNumSecondsBetweenTests':: { 'function': { help: |||
      If 'validate_creds' is true, the number of seconds to wait between each test of generated credentials.
    ||| } },
    withNumSecondsBetweenTests(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { num_seconds_between_tests: value } },
      },
    },
    '#withNumSequentialSuccesses':: { 'function': { help: |||
      If 'validate_creds' is true, the number of sequential successes required to validate generated credentials.
    ||| } },
    withNumSequentialSuccesses(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { num_sequential_successes: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Azure Secret Role to read credentials from.
    ||| } },
    withRole(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
    '#withSubscriptionId':: { 'function': { help: |||
      The subscription ID to use during credential validation. Defaults to the subscription ID configured in the Vault backend
    ||| } },
    withSubscriptionId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { subscription_id: value } },
      },
    },
    '#withTenantId':: { 'function': { help: |||
      The tenant ID to use during credential validation. Defaults to the tenant ID configured in the Vault backend
    ||| } },
    withTenantId(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { tenant_id: value } },
      },
    },
    '#withValidateCreds':: { 'function': { help: |||
      Whether generated credentials should be validated before being returned.
    ||| } },
    withValidateCreds(value):: self {
      data+: {
        vault_azure_access_credentials+: { [terraformName]+: { validate_creds: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_azure_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Azure Secret Backend to read credentials from.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_id':: { 'function': { help: |||
        The client id for credentials to query the Azure APIs.
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        The client secret for credentials to query the Azure APIs.
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#environment':: { 'function': { help: |||
        The Azure environment to use during credential validation.
        Defaults to the Azure Public Cloud.
        Some possible values: AzurePublicCloud, AzureUSGovernmentCloud
      ||| } },
      environment(suffix=''):: refSelf.plain('.environment%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds relative to the time in lease_start_time.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Lease identifier assigned by vault.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': { help: |||
        True if the duration of this lease can be extended through renewal.
      ||| } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
      '#lease_start_time':: { 'function': { help: |||
        Time at which the lease was read, using the clock of the system where Terraform was running
      ||| } },
      lease_start_time(suffix=''):: refSelf.plain('.lease_start_time%s' % suffix),
      '#max_cred_validation_seconds':: { 'function': { help: |||
        If 'validate_creds' is true, the number of seconds after which to give up validating credentials.
      ||| } },
      max_cred_validation_seconds(suffix=''):: refSelf.plain('.max_cred_validation_seconds%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#num_seconds_between_tests':: { 'function': { help: |||
        If 'validate_creds' is true, the number of seconds to wait between each test of generated credentials.
      ||| } },
      num_seconds_between_tests(suffix=''):: refSelf.plain('.num_seconds_between_tests%s' % suffix),
      '#num_sequential_successes':: { 'function': { help: |||
        If 'validate_creds' is true, the number of sequential successes required to validate generated credentials.
      ||| } },
      num_sequential_successes(suffix=''):: refSelf.plain('.num_sequential_successes%s' % suffix),
      '#role':: { 'function': { help: |||
        Azure Secret Role to read credentials from.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#subscription_id':: { 'function': { help: |||
        The subscription ID to use during credential validation. Defaults to the subscription ID configured in the Vault backend
      ||| } },
      subscription_id(suffix=''):: refSelf.plain('.subscription_id%s' % suffix),
      '#tenant_id':: { 'function': { help: |||
        The tenant ID to use during credential validation. Defaults to the tenant ID configured in the Vault backend
      ||| } },
      tenant_id(suffix=''):: refSelf.plain('.tenant_id%s' % suffix),
      '#validate_creds':: { 'function': { help: |||
        Whether generated credentials should be validated before being returned.
      ||| } },
      validate_creds(suffix=''):: refSelf.plain('.validate_creds%s' % suffix),
    },
  },
}
