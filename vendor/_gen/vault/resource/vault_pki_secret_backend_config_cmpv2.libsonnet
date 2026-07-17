{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages Vault PKI CMPv2 configuration
      |||,
  } },
  new(terraformName, backend):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: {
        backend: backend,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { [name]: value } },
    } },
    '#withAuditFields':: { 'function': {
      help:
        |||
          Fields parsed from the CSR that appear in the audit and can be used by sentinel policies
        |||,
    } },
    withAuditFields(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { audit_fields: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The PKI secret backend the resource belongs to
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { backend: value } },
    } },
    '#withDefaultPathPolicy':: { 'function': {
      help:
        |||
          Can be sign-verbatim or a role given by role:<role_name>
        |||,
    } },
    withDefaultPathPolicy(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { default_path_policy: value } },
    } },
    '#withDisabledValidations':: { 'function': {
      help:
        |||
          A comma-separated list of validations not to perform on CMPv2 messages.
        |||,
    } },
    withDisabledValidations(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { disabled_validations: value } },
    } },
    '#withEnableSentinelParsing':: { 'function': {
      help:
        |||
          If set, parse out fields from the provided CSR making them available for Sentinel policies
        |||,
    } },
    withEnableSentinelParsing(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enable_sentinel_parsing: value } },
    } },
    '#withEnabled':: { 'function': {
      help:
        |||
          Specifies whether CMPv2 is enabled
        |||,
    } },
    withEnabled(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { enabled: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_config_cmpv2+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_cmpv2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#audit_fields':: { 'function': {
        help:
          |||
            Fields parsed from the CSR that appear in the audit and can be used by sentinel policies
          |||,
      } },
      audit_fields(suffix=''):: refSelf.plain('.audit_fields%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            The PKI secret backend the resource belongs to
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#default_path_policy':: { 'function': {
        help:
          |||
            Can be sign-verbatim or a role given by role:<role_name>
          |||,
      } },
      default_path_policy(suffix=''):: refSelf.plain('.default_path_policy%s' % suffix),
      '#disabled_validations':: { 'function': {
        help:
          |||
            A comma-separated list of validations not to perform on CMPv2 messages.
          |||,
      } },
      disabled_validations(suffix=''):: refSelf.plain('.disabled_validations%s' % suffix),
      '#enable_sentinel_parsing':: { 'function': {
        help:
          |||
            If set, parse out fields from the provided CSR making them available for Sentinel policies
          |||,
      } },
      enable_sentinel_parsing(suffix=''):: refSelf.plain('.enable_sentinel_parsing%s' % suffix),
      '#enabled':: { 'function': {
        help:
          |||
            Specifies whether CMPv2 is enabled
          |||,
      } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_updated':: { 'function': {
        help:
          |||
            A read-only timestamp representing the last time the configuration was updated
          |||,
      } },
      last_updated(suffix=''):: refSelf.plain('.last_updated%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),

    },

  },

}
