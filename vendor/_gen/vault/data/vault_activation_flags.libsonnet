{
  '#new':: { 'function': { help: |||
    Reads activation flags from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_activation_flags+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { providers: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_activation_flags.%s%s }' % [terraformName, suffix],
    fields:: {
      '#activated_flags':: { 'function': { help: |||
        List of activated feature flags.
      ||| } },
      activated_flags(suffix=''):: refSelf.plain('.activated_flags%s' % suffix),
      '#id':: { 'function': { help: |||
        Unique identifier for this data source.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#unactivated_flags':: { 'function': { help: |||
        List of unactivated feature flags.
      ||| } },
      unactivated_flags(suffix=''):: refSelf.plain('.unactivated_flags%s' % suffix),
    },
  },
}
