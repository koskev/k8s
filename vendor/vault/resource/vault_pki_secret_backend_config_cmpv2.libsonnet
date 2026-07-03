{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { id: value } },
      },
    },
    withDefaultPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enabled: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { namespace: value } },
      },
    },
    withAuditFields(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { audit_fields: value } },
      },
    },
    withLastUpdated(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { last_updated: value } },
      },
    },
    withEnableSentinelParsing(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    withDisabledValidations(value):: self {
      resource+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { disabled_validations: value } },
      },
    },
  },
}
