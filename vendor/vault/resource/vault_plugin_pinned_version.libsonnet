{
  new(terraformName, version, name, type):: {
    _type:: 'tf',
    resource+: {
      vault_plugin_pinned_version+: { [terraformName]+: {
        version: version,
        name: name,
        type: type,
      } },
    },
    withVersion(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { version: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { id: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { type: value } },
      },
    },
  },
}
