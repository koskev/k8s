{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_scep+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withEnabled(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { enabled: value } },
      },
    },
    withLastUpdated(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { last_updated: value } },
      },
    },
    withDefaultPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { id: value } },
      },
    },
    withAllowedDigestAlgorithms(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_digest_algorithms: value } },
      },
    },
    withAuthenticators(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { authenticators: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { backend: value } },
      },
    },
    withLogLevel(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { log_level: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { namespace: value } },
      },
    },
    withRestrictCaChainToIssuer(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { restrict_ca_chain_to_issuer: value } },
      },
    },
    withAllowedEncryptionAlgorithms(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_encryption_algorithms: value } },
      },
    },
    withExternalValidation(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { external_validation: value } },
      },
    },
  },
}
