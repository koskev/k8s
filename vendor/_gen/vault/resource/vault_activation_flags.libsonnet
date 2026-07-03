{
  new(terraformName, feature):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_activation_flags+: {
        [terraformName]+: {
          feature: feature,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withFeature':: { 'function': { help: |||
      Exact feature key to activate with PUT /sys/activation-flags/:feature/activate. 
    ||| } },
    withFeature(value):: self {
      resource+: {
        vault_activation_flags+: { [terraformName]+: { feature: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_activation_flags.%s%s }' % [terraformName, suffix],
    fields:: {
      '#feature':: { 'function': { help: |||
        Exact feature key to activate with PUT /sys/activation-flags/:feature/activate. 
      ||| } },
      feature(suffix=''):: refSelf.plain('.feature%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
