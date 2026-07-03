{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_est+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withDefaultPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    withAuditFields(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { audit_fields: value } },
      },
    },
    withAuthenticators(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { authenticators: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { namespace: value } },
      },
    },
    withEnabled(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { id: value } },
      },
    },
    withLastUpdated(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { last_updated: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { backend: value } },
      },
    },
    withEnableSentinelParsing(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    withLabelToPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { label_to_path_policy: value } },
      },
    },
    withDefaultMount(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_mount: value } },
      },
    },
  },
}
