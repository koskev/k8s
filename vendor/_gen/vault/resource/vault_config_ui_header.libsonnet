{
  '#new':: { 'function': { help: |||
    Manages custom response headers returned from the Vault UI. This resource requires `sudo` capability and must be called from the root namespace. **Warning:** Setting `Content-Security-Policy` will override Vault's secure default CSP.
  ||| } },
  local outerSelf = self,
  new(terraformName, name, values):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_config_ui_header+: {
        [terraformName]+: {
          name: name,
          values: values,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withName':: { 'function': { help: |||
      The name of the custom header. Cannot start with `X-Vault-`.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_config_ui_header+: { [terraformName]+: { name: value } },
      },
    },
    '#withValues':: { 'function': { help: |||
      Set of values for the header. At least one value is required. Duplicates are automatically ignored.
    ||| } },
    withValues(value):: self {
      resource+: {
        vault_config_ui_header+: { [terraformName]+: { values: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_config_ui_header.%s%s }' % [terraformName, suffix],
    fields:: {
      '#name':: { 'function': { help: |||
        The name of the custom header. Cannot start with `X-Vault-`.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#values':: { 'function': { help: |||
        Set of values for the header. At least one value is required. Duplicates are automatically ignored.
      ||| } },
      values(suffix=''):: refSelf.plain('.values%s' % suffix),
    },
  },
}
