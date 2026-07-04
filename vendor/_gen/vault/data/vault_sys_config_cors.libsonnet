{
  '#new':: { 'function': { help: |||
    Reads the current CORS configuration from Vault. This data source reads from the root namespace only.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_sys_config_cors+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_sys_config_cors.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_headers':: { 'function': { help: |||
        Set of additional custom headers allowed on cross-origin requests. This only includes custom headers that were explicitly configured, not the standard Vault headers that are automatically included.
      ||| } },
      allowed_headers(suffix=''):: refSelf.plain('.allowed_headers%s' % suffix),
      '#allowed_origins':: { 'function': { help: |||
        Set of origins permitted to make cross-origin requests.
      ||| } },
      allowed_origins(suffix=''):: refSelf.plain('.allowed_origins%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Whether CORS is currently enabled.
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
    },
  },
}
