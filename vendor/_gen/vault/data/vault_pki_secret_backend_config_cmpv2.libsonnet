{
  '#new':: { 'function': { help: |||
    Reads Vault PKI CMPv2 configuration
  ||| } },
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_cmpv2+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Path where PKI engine is mounted
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { backend: value } },
      },
    },
    '#disabled_validations':: { 'function': { help: |||
      A comma-separated list of validations not to perform on CMPv2 messages.
    ||| } },
    withDisabledValidations(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { disabled_validations: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_config_cmpv2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#audit_fields':: { 'function': { help: |||
        Fields parsed from the CSR that appear in the audit and can be used by sentinel policies
      ||| } },
      audit_fields(suffix=''):: refSelf.plain('.audit_fields%s' % suffix),
      '#authenticators':: { 'function': { help: |||
        Lists the mount accessors CMPv2 should delegate authentication requests towards
      ||| } },
      authenticators(suffix=''):: refSelf.plain('.authenticators%s' % suffix),
      '#backend':: { 'function': { help: |||
        Path where PKI engine is mounted
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#default_path_policy':: { 'function': { help: |||
        Can be sign-verbatim or a role given by role:<role_name>
      ||| } },
      default_path_policy(suffix=''):: refSelf.plain('.default_path_policy%s' % suffix),
      '#disabled_validations':: { 'function': { help: |||
        A comma-separated list of validations not to perform on CMPv2 messages.
      ||| } },
      disabled_validations(suffix=''):: refSelf.plain('.disabled_validations%s' % suffix),
      '#enable_sentinel_parsing':: { 'function': { help: |||
        If set, parse out fields from the provided CSR making them available for Sentinel policies
      ||| } },
      enable_sentinel_parsing(suffix=''):: refSelf.plain('.enable_sentinel_parsing%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Specifies whether CMPv2 is enabled
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_updated':: { 'function': { help: |||
        A read-only timestamp representing the last time the configuration was updated
      ||| } },
      last_updated(suffix=''):: refSelf.plain('.last_updated%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
