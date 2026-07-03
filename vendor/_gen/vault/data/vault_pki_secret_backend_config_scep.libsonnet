{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_scep+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAllowedDigestAlgorithms':: { 'function': { help: |||
      List of allowed digest algorithms for SCEP requests 
    ||| } },
    withAllowedDigestAlgorithms(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_digest_algorithms: value } },
      },
    },
    '#withAllowedEncryptionAlgorithms':: { 'function': { help: |||
      List of allowed encryption algorithms for SCEP requests 
    ||| } },
    withAllowedEncryptionAlgorithms(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { allowed_encryption_algorithms: value } },
      },
    },
    '#withAuthenticators':: { 'function': { help: |||
      Lists the mount accessors SCEP should delegate authentication requests towards 
    ||| } },
    withAuthenticators(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { authenticators: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Path where PKI engine is mounted 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDefaultPathPolicy':: { 'function': { help: |||
      Specifies the policy to be used for non-role-qualified SCEP requests; valid values are 'sign-verbatim', or "role:<role_name>" to specify a role to use as this policy. 
    ||| } },
    withDefaultPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    '#withEnabled':: { 'function': { help: |||
      Specifies whether SCEP is enabled 
    ||| } },
    withEnabled(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { enabled: value } },
      },
    },
    '#withExternalValidation':: { 'function': { help: |||
      Lists the 3rd party validation of SCEP requests 
    ||| } },
    withExternalValidation(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { external_validation: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastUpdated':: { 'function': { help: |||
      A read-only timestamp representing the last time the configuration was updated 
    ||| } },
    withLastUpdated(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { last_updated: value } },
      },
    },
    '#withLogLevel':: { 'function': { help: |||
      The level of logging verbosity, affects only SCEP logs on this mount 
    ||| } },
    withLogLevel(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { log_level: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRestrictCaChainToIssuer':: { 'function': { help: |||
      If true, only return the issuer CA, otherwise the entire CA certificate chain will be returned if available from the PKI mount 
    ||| } },
    withRestrictCaChainToIssuer(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { restrict_ca_chain_to_issuer: value } },
      },
    },
  },
}
