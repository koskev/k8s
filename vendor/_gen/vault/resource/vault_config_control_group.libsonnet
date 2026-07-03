{
  new(terraformName, max_ttl):: {
    _type:: 'tf',
    resource+: {
      vault_config_control_group+: { [terraformName]+: {
        max_ttl: max_ttl,
      } },
    },
    '#withId': { 'function': { help: |||
      The resource ID. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl': { 'function': { help: |||
      The maximum ttl for a control group wrapping token. This can be provided in seconds or duration (for example, 2h). 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
