{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_managed_keys+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        vault_managed_keys+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_managed_keys+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
