{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withWebhook':: { 'function': { help: |||
      Webhooks is a list of webhooks and the affected resources and operations. 
    ||| } },
    withWebhook(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { webhook: value } },
      },
    },
  },
}
