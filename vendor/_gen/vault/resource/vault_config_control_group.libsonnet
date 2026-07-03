{
  new(terraformName, max_ttl):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_config_control_group+: {
        [terraformName]+: {
          max_ttl: max_ttl,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMaxTtl':: { 'function': { help: |||
      The maximum ttl for a control group wrapping token. This can be provided in seconds or duration (for example, 2h). 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_control_group+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_config_control_group.%s%s }' % [terraformName, suffix],
    fields:: {
      '#id':: { 'function': { help: |||
        The resource ID. 
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        The maximum ttl for a control group wrapping token. This can be provided in seconds or duration (for example, 2h). 
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
