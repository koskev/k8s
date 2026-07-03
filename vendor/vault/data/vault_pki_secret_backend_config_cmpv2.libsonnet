{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { id: value } },
      },
    },
    withDisabledValidations(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { disabled_validations: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { namespace: value } },
      },
    },
    withDefaultPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    withEnabled(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enabled: value } },
      },
    },
    withAuthenticators(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { authenticators: value } },
      },
    },
    withAuditFields(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { audit_fields: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { backend: value } },
      },
    },
    withEnableSentinelParsing(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    withLastUpdated(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { last_updated: value } },
      },
    },
  },
}
