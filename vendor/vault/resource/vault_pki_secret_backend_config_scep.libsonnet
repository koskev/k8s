{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_scep+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withDefaultPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { enabled: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { backend: value } },
      },
    },
    withRestrictCaChainToIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { restrict_ca_chain_to_issuer: value } },
      },
    },
    withLastUpdated(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { last_updated: value } },
      },
    },
    withLogLevel(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { log_level: value } },
      },
    },
    withAllowedEncryptionAlgorithms(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_encryption_algorithms: value } },
      },
    },
    withAllowedDigestAlgorithms(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_digest_algorithms: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { id: value } },
      },
    },
  },
}
