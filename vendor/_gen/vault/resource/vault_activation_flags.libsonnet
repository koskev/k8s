{
  new(terraformName, feature):: {
    _type:: 'tf',
    resource+: {
      vault_activation_flags+: { [terraformName]+: {
        feature: feature,
      } },
    },
    '#withFeature': { 'function': { help: |||
      Exact feature key to activate with PUT /sys/activation-flags/:feature/activate. 
    ||| } },
    withFeature(value):: self {
      resource+: {
        vault_activation_flags+: { [terraformName]+: { feature: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_activation_flags+: { [terraformName]+: { id: value } },
      },
    },
  },
}
