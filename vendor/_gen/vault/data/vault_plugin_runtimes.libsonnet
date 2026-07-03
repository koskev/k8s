{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_plugin_runtimes+: { [terraformName]+: {
      } },
    },
    '#withId': { 'function': { help: |||
      Unique identifier for this data source. 
    ||| } },
    withId(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRuntimes': { 'function': { help: |||
      List of plugin runtimes. 
    ||| } },
    withRuntimes(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { runtimes: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Specifies the plugin runtime type to list. Currently only `container` is supported. 
    ||| } },
    withType(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { type: value } },
      },
    },
  },
}
