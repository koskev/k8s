{
  '#new':: { 'function': { help: |||
    Manages Vault PKI EST configuration
  ||| } },
  local outerSelf = self,
  new(terraformName, backend):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_est+: {
        [terraformName]+: {
          backend: backend,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { providers: value } },
      },
    },
    '#audit_fields':: { 'function': { help: |||
      Fields parsed from the CSR that appear in the audit and can be used by sentinel policies
    ||| } },
    withAuditFields(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { audit_fields: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { backend: value } },
      },
    },
    '#default_mount':: { 'function': { help: |||
      If set, this mount will register the default `.well-known/est` URL path. Only a single mount can enable this across a Vault cluster
    ||| } },
    withDefaultMount(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_mount: value } },
      },
    },
    '#default_path_policy':: { 'function': { help: |||
      Required to be set if default_mount is enabled. Specifies the behavior for requests using the default EST label. Can be sign-verbatim or a role given by role:<role_name>
    ||| } },
    withDefaultPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    '#enable_sentinel_parsing':: { 'function': { help: |||
      If set, parse out fields from the provided CSR making them available for Sentinel policies
    ||| } },
    withEnableSentinelParsing(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    '#enabled':: { 'function': { help: |||
      Specifies whether EST is enabled
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { id: value } },
      },
    },
    '#label_to_path_policy':: { 'function': { help: |||
      Configures a pairing of an EST label with the redirected behavior for requests hitting that role. The path policy can be sign-verbatim or a role given by role:<role_name>. Labels must be unique across Vault cluster, and will register .well-known/est/<label> URL paths
    ||| } },
    withLabelToPathPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { label_to_path_policy: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_est.%s%s }' % [terraformName, suffix],
    fields:: {
      '#audit_fields':: { 'function': { help: |||
        Fields parsed from the CSR that appear in the audit and can be used by sentinel policies
      ||| } },
      audit_fields(suffix=''):: refSelf.plain('.audit_fields%s' % suffix),
      '#backend':: { 'function': { help: |||
        The PKI secret backend the resource belongs to
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#default_mount':: { 'function': { help: |||
        If set, this mount will register the default `.well-known/est` URL path. Only a single mount can enable this across a Vault cluster
      ||| } },
      default_mount(suffix=''):: refSelf.plain('.default_mount%s' % suffix),
      '#default_path_policy':: { 'function': { help: |||
        Required to be set if default_mount is enabled. Specifies the behavior for requests using the default EST label. Can be sign-verbatim or a role given by role:<role_name>
      ||| } },
      default_path_policy(suffix=''):: refSelf.plain('.default_path_policy%s' % suffix),
      '#enable_sentinel_parsing':: { 'function': { help: |||
        If set, parse out fields from the provided CSR making them available for Sentinel policies
      ||| } },
      enable_sentinel_parsing(suffix=''):: refSelf.plain('.enable_sentinel_parsing%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Specifies whether EST is enabled
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#label_to_path_policy':: { 'function': { help: |||
        Configures a pairing of an EST label with the redirected behavior for requests hitting that role. The path policy can be sign-verbatim or a role given by role:<role_name>. Labels must be unique across Vault cluster, and will register .well-known/est/<label> URL paths
      ||| } },
      label_to_path_policy(suffix=''):: refSelf.plain('.label_to_path_policy%s' % suffix),
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
