{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Provides an ephemeral resource to read Azure access credentials from Vault.
      |||,
  } },
  new(terraformName, backend, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Azure Secret Backend to read credentials from.
        |||,
    } },
    withBackend(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { backend: value } },
    } },
    '#withEnvironment':: { 'function': {
      help:
        |||
          The Azure environment to use during credential validation. Defaults to the Azure Public Cloud. Some possible values: AzurePublicCloud, AzureUSGovernmentCloud.
        |||,
    } },
    withEnvironment(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { environment: value } },
    } },
    '#withMaxCredValidationSeconds':: { 'function': {
      help:
        |||
          If 'validate_creds' is true, the number of seconds after which to give up validating credentials.
        |||,
    } },
    withMaxCredValidationSeconds(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { max_cred_validation_seconds: value } },
    } },
    '#withMountId':: { 'function': {
      help:
        |||
          Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
        |||,
    } },
    withMountId(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { mount_id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { namespace: value } },
    } },
    '#withNumSecondsBetweenTests':: { 'function': {
      help:
        |||
          If 'validate_creds' is true, the number of seconds to wait between each test of generated credentials.
        |||,
    } },
    withNumSecondsBetweenTests(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { num_seconds_between_tests: value } },
    } },
    '#withNumSequentialSuccesses':: { 'function': {
      help:
        |||
          If 'validate_creds' is true, the number of sequential successes required to validate generated credentials.
        |||,
    } },
    withNumSequentialSuccesses(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { num_sequential_successes: value } },
    } },
    '#withRequestMetadata':: { 'function': {
      help:
        |||
          Input metadata to send with the request to Vault.
        |||,
    } },
    withRequestMetadata(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { request_metadata: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Azure Secret Role to read credentials from.
        |||,
    } },
    withRole(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { role: value } },
    } },
    '#withSubscriptionId':: { 'function': {
      help:
        |||
          The subscription ID to use during credential validation. Defaults to the subscription ID configured in the Vault backend.
        |||,
    } },
    withSubscriptionId(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { subscription_id: value } },
    } },
    '#withTenantId':: { 'function': {
      help:
        |||
          The tenant ID to use during credential validation. Defaults to the tenant ID configured in the Vault backend.
        |||,
    } },
    withTenantId(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { tenant_id: value } },
    } },
    '#withValidateCreds':: { 'function': {
      help:
        |||
          Whether generated credentials should be validated before being returned.
        |||,
    } },
    withValidateCreds(value):: self { ephemeral+: {
      vault_azure_access_credentials+: { [terraformName]+: { validate_creds: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_azure_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Azure Secret Backend to read credentials from.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_id':: { 'function': {
        help:
          |||
            The client id for credentials to query the Azure APIs.
          |||,
      } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': {
        help:
          |||
            The client secret for credentials to query the Azure APIs.
          |||,
      } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#environment':: { 'function': {
        help:
          |||
            The Azure environment to use during credential validation. Defaults to the Azure Public Cloud. Some possible values: AzurePublicCloud, AzureUSGovernmentCloud.
          |||,
      } },
      environment(suffix=''):: refSelf.plain('.environment%s' % suffix),
      '#lease_duration':: { 'function': {
        help:
          |||
            Lease duration in seconds relative to the time in lease_start_time.
          |||,
      } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': {
        help:
          |||
            Lease identifier assigned by vault.
          |||,
      } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': {
        help:
          |||
            True if the duration of this lease can be extended through renewal.
          |||,
      } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
      '#lease_start_time':: { 'function': {
        help:
          |||
            Time at which the lease was read, using the clock of the system where Terraform was running.
          |||,
      } },
      lease_start_time(suffix=''):: refSelf.plain('.lease_start_time%s' % suffix),
      '#max_cred_validation_seconds':: { 'function': {
        help:
          |||
            If 'validate_creds' is true, the number of seconds after which to give up validating credentials.
          |||,
      } },
      max_cred_validation_seconds(suffix=''):: refSelf.plain('.max_cred_validation_seconds%s' % suffix),
      '#metadata':: { 'function': {
        help:
          |||
            Metadata returned by Vault for the credentials.
          |||,
      } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mount_id':: { 'function': {
        help:
          |||
            Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
          |||,
      } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#num_seconds_between_tests':: { 'function': {
        help:
          |||
            If 'validate_creds' is true, the number of seconds to wait between each test of generated credentials.
          |||,
      } },
      num_seconds_between_tests(suffix=''):: refSelf.plain('.num_seconds_between_tests%s' % suffix),
      '#num_sequential_successes':: { 'function': {
        help:
          |||
            If 'validate_creds' is true, the number of sequential successes required to validate generated credentials.
          |||,
      } },
      num_sequential_successes(suffix=''):: refSelf.plain('.num_sequential_successes%s' % suffix),
      '#request_metadata':: { 'function': {
        help:
          |||
            Input metadata to send with the request to Vault.
          |||,
      } },
      request_metadata(suffix=''):: refSelf.plain('.request_metadata%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Azure Secret Role to read credentials from.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#subscription_id':: { 'function': {
        help:
          |||
            The subscription ID to use during credential validation. Defaults to the subscription ID configured in the Vault backend.
          |||,
      } },
      subscription_id(suffix=''):: refSelf.plain('.subscription_id%s' % suffix),
      '#tenant_id':: { 'function': {
        help:
          |||
            The tenant ID to use during credential validation. Defaults to the tenant ID configured in the Vault backend.
          |||,
      } },
      tenant_id(suffix=''):: refSelf.plain('.tenant_id%s' % suffix),
      '#validate_creds':: { 'function': {
        help:
          |||
            Whether generated credentials should be validated before being returned.
          |||,
      } },
      validate_creds(suffix=''):: refSelf.plain('.validate_creds%s' % suffix),

    },

  },

}
