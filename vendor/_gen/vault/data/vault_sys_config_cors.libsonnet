{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Reads the current CORS configuration from Vault. This data source reads from the root namespace only.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_sys_config_cors+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_sys_config_cors+: { [terraformName]+: { [name]: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_sys_config_cors.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_headers':: { 'function': {
        help:
          |||
            Set of additional custom headers allowed on cross-origin requests. This only includes custom headers that were explicitly configured, not the standard Vault headers that are automatically included.
          |||,
      } },
      allowed_headers(suffix=''):: refSelf.plain('.allowed_headers%s' % suffix),
      '#allowed_origins':: { 'function': {
        help:
          |||
            Set of origins permitted to make cross-origin requests.
          |||,
      } },
      allowed_origins(suffix=''):: refSelf.plain('.allowed_origins%s' % suffix),
      '#enabled':: { 'function': {
        help:
          |||
            Whether CORS is currently enabled.
          |||,
      } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),

    },

  },

}
