{
  '#new':: { 'function': { help: |||
    Manages Vault PKI SCEP configuration
  ||| } },
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_scep+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_scep.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_digest_algorithms':: { 'function': { help: |||
        List of allowed digest algorithms for SCEP requests
      ||| } },
      allowed_digest_algorithms(suffix=''):: refSelf.plain('.allowed_digest_algorithms%s' % suffix),
      '#allowed_encryption_algorithms':: { 'function': { help: |||
        List of allowed encryption algorithms for SCEP requests
      ||| } },
      allowed_encryption_algorithms(suffix=''):: refSelf.plain('.allowed_encryption_algorithms%s' % suffix),
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#default_path_policy':: { 'function': { help: |||
        Specifies the behavior for requests using the default SCEP label. Can be sign-verbatim or a role given by role:<role_name>
      ||| } },
      default_path_policy(suffix=''):: refSelf.plain('.default_path_policy%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Specifies whether SCEP is enabled
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_updated':: { 'function': { help: |||
        A read-only timestamp representing the last time the configuration was updated
      ||| } },
      last_updated(suffix=''):: refSelf.plain('.last_updated%s' % suffix),
      '#log_level':: { 'function': { help: |||
        The level of logging verbosity, affects only SCEP logs on this mount
      ||| } },
      log_level(suffix=''):: refSelf.plain('.log_level%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#restrict_ca_chain_to_issuer':: { 'function': { help: |||
        If true, only return the issuer CA, otherwise the entire CA certificate chain will be returned if available from the PKI mount
      ||| } },
      restrict_ca_chain_to_issuer(suffix=''):: refSelf.plain('.restrict_ca_chain_to_issuer%s' % suffix),
    },
  },
}
