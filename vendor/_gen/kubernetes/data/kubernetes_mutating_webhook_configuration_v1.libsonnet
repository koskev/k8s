{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      kubernetes_mutating_webhook_configuration_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_mutating_webhook_configuration_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#webhook':: { 'function': { help: |||
        Webhooks is a list of webhooks and the affected resources and operations. 
      ||| } },
      webhook(suffix=''):: refSelf.plain('.webhook%s' % suffix),
    },
  },
}
