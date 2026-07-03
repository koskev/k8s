{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_plugin_runtimes+: { [terraformName]+: {
      } },
    },
    withType(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { type: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { id: value } },
      },
    },
    withRuntimes(value):: self {
      data+: {
        vault_plugin_runtimes+: { [terraformName]+: { runtimes: value } },
      },
    },
  },
}
