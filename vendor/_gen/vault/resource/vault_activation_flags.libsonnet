{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Activates a single activation flag in Vault.
      |||,
  } },
  new(terraformName, feature):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_activation_flags+: { [terraformName]+: {
        feature: feature,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { [name]: value } },
    } },
    '#withFeature':: { 'function': {
      help:
        |||
          Exact feature key to activate with PUT /sys/activation-flags/:feature/activate.
        |||,
    } },
    withFeature(value):: self { resource+: {
      vault_activation_flags+: { [terraformName]+: { feature: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_activation_flags.%s%s }' % [terraformName, suffix],
    fields:: {
      '#feature':: { 'function': {
        help:
          |||
            Exact feature key to activate with PUT /sys/activation-flags/:feature/activate.
          |||,
      } },
      feature(suffix=''):: refSelf.plain('.feature%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
