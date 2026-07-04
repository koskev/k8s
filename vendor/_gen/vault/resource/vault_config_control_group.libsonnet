{
  local outerSelf = self,
  new(terraformName, max_ttl):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_config_control_group+: {
        [terraformName]+: {
          max_ttl: max_ttl,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { providers: value } },
      },
    },
    '#max_ttl':: { 'function': { help: |||
      The maximum ttl for a control group wrapping token. This can be provided in seconds or duration (for example, 2h).
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_config_control_group.%s%s }' % [terraformName, suffix],
    fields:: {
      '#id':: { 'function': { help: |||
        The resource ID.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        The maximum ttl for a control group wrapping token. This can be provided in seconds or duration (for example, 2h).
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
