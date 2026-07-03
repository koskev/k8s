{
  new(terraformName, name, values):: {
    _type:: 'tf',
    resource+: {
      vault_config_ui_header+: { [terraformName]+: {
        name: name,
        values: values,
      } },
    },
    '#withName': { 'function': { help: |||
      The name of the custom header. Cannot start with `X-Vault-`. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_config_ui_header+: { [terraformName]+: { name: value } },
      },
    },
    '#withValues': { 'function': { help: |||
      Set of values for the header. At least one value is required. Duplicates are automatically ignored. 
    ||| } },
    withValues(value):: self {
      resource+: {
        vault_config_ui_header+: { [terraformName]+: { values: value } },
      },
    },
  },
}
