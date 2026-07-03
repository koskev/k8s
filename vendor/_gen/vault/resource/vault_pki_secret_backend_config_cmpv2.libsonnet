{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAuditFields': { 'function': { help: |||
      Fields parsed from the CSR that appear in the audit and can be used by sentinel policies 
    ||| } },
    withAuditFields(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { audit_fields: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      The PKI secret backend the resource belongs to 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDefaultPathPolicy': { 'function': { help: |||
      Can be sign-verbatim or a role given by role:<role_name> 
    ||| } },
    withDefaultPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    '#withDisabledValidations': { 'function': { help: |||
      A comma-separated list of validations not to perform on CMPv2 messages. 
    ||| } },
    withDisabledValidations(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { disabled_validations: value } },
      },
    },
    '#withEnableSentinelParsing': { 'function': { help: |||
      If set, parse out fields from the provided CSR making them available for Sentinel policies 
    ||| } },
    withEnableSentinelParsing(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    '#withEnabled': { 'function': { help: |||
      Specifies whether CMPv2 is enabled 
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastUpdated': { 'function': { help: |||
      A read-only timestamp representing the last time the configuration was updated 
    ||| } },
    withLastUpdated(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { last_updated: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
