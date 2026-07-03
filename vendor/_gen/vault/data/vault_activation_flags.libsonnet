{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_activation_flags+: { [terraformName]+: {
      } },
    },
    '#withActivatedFlags': { 'function': { help: |||
      List of activated feature flags. 
    ||| } },
    withActivatedFlags(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { activated_flags: value } },
      },
    },
    '#withId': { 'function': { help: |||
      Unique identifier for this data source. 
    ||| } },
    withId(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { id: value } },
      },
    },
    '#withUnactivatedFlags': { 'function': { help: |||
      List of unactivated feature flags. 
    ||| } },
    withUnactivatedFlags(value):: self {
      data+: {
        vault_activation_flags+: { [terraformName]+: { unactivated_flags: value } },
      },
    },
  },
}
