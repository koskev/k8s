{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Lists plugin runtimes registered in Vault's plugin runtimes catalog.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_plugin_runtimes+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { [name]: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { namespace: value } },
    } },
    '#withType':: { 'function': {
      help:
        |||
          Specifies the plugin runtime type to list. Currently only `container` is supported.
        |||,
    } },
    withType(value):: self { data+: {
      vault_plugin_runtimes+: { [terraformName]+: { type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_plugin_runtimes.%s%s }' % [terraformName, suffix],
    fields:: {
      '#id':: { 'function': {
        help:
          |||
            Unique identifier for this data source.
          |||,
      } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#runtimes':: { 'function': {
        help:
          |||
            List of plugin runtimes.
          |||,
      } },
      runtimes(suffix=''):: refSelf.plain('.runtimes%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            Specifies the plugin runtime type to list. Currently only `container` is supported.
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
