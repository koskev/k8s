{
  new(terraformName, name, type, version):: {
    _type:: 'tf',
    resource+: {
      vault_plugin_pinned_version+: { [terraformName]+: {
        name: name,
        type: type,
        version: version,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the plugin. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { name: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of plugin; one of "auth", "secret", or "database". 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { type: value } },
      },
    },
    '#withVersion':: { 'function': { help: |||
      Semantic pinned plugin version. 
    ||| } },
    withVersion(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { version: value } },
      },
    },
  },
}
