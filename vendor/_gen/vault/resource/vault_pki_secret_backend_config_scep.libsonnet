{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_scep+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAllowedDigestAlgorithms':: { 'function': { help: |||
      List of allowed digest algorithms for SCEP requests 
    ||| } },
    withAllowedDigestAlgorithms(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_digest_algorithms: value } },
      },
    },
    '#withAllowedEncryptionAlgorithms':: { 'function': { help: |||
      List of allowed encryption algorithms for SCEP requests 
    ||| } },
    withAllowedEncryptionAlgorithms(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_encryption_algorithms: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDefaultPathPolicy':: { 'function': { help: |||
      Specifies the behavior for requests using the default SCEP label. Can be sign-verbatim or a role given by role:<role_name> 
    ||| } },
    withDefaultPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    '#withEnabled':: { 'function': { help: |||
      Specifies whether SCEP is enabled 
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastUpdated':: { 'function': { help: |||
      A read-only timestamp representing the last time the configuration was updated 
    ||| } },
    withLastUpdated(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { last_updated: value } },
      },
    },
    '#withLogLevel':: { 'function': { help: |||
      The level of logging verbosity, affects only SCEP logs on this mount 
    ||| } },
    withLogLevel(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { log_level: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRestrictCaChainToIssuer':: { 'function': { help: |||
      If true, only return the issuer CA, otherwise the entire CA certificate chain will be returned if available from the PKI mount 
    ||| } },
    withRestrictCaChainToIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { restrict_ca_chain_to_issuer: value } },
      },
    },
  },
}
