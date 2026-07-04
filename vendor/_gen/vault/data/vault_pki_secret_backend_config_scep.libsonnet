{
  '#new':: { 'function': { help: |||
    Reads Vault PKI SCEP configuration
  ||| } },
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_scep+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Path where PKI engine is mounted
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { id: value } },
      },
    },
    '#log_level':: { 'function': { help: |||
      The level of logging verbosity, affects only SCEP logs on this mount
    ||| } },
    withLogLevel(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { log_level: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_scep+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_config_scep.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_digest_algorithms':: { 'function': { help: |||
        List of allowed digest algorithms for SCEP requests
      ||| } },
      allowed_digest_algorithms(suffix=''):: refSelf.plain('.allowed_digest_algorithms%s' % suffix),
      '#allowed_encryption_algorithms':: { 'function': { help: |||
        List of allowed encryption algorithms for SCEP requests
      ||| } },
      allowed_encryption_algorithms(suffix=''):: refSelf.plain('.allowed_encryption_algorithms%s' % suffix),
      '#authenticators':: { 'function': { help: |||
        Lists the mount accessors SCEP should delegate authentication requests towards
      ||| } },
      authenticators(suffix=''):: refSelf.plain('.authenticators%s' % suffix),
      '#backend':: { 'function': { help: |||
        Path where PKI engine is mounted
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#default_path_policy':: { 'function': { help: |||
        Specifies the policy to be used for non-role-qualified SCEP requests; valid values are 'sign-verbatim', or "role:<role_name>" to specify a role to use as this policy.
      ||| } },
      default_path_policy(suffix=''):: refSelf.plain('.default_path_policy%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Specifies whether SCEP is enabled
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      '#external_validation':: { 'function': { help: |||
        Lists the 3rd party validation of SCEP requests
      ||| } },
      external_validation(suffix=''):: refSelf.plain('.external_validation%s' % suffix),
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
