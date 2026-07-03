{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_est+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withLabelToPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { label_to_path_policy: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { id: value } },
      },
    },
    withAuditFields(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { audit_fields: value } },
      },
    },
    withEnableSentinelParsing(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    withLastUpdated(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { last_updated: value } },
      },
    },
    withDefaultMount(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_mount: value } },
      },
    },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enabled: value } },
      },
    },
    withDefaultPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_path_policy: value } },
      },
    },
  },
}
