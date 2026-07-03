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
    withWebhook(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { webhook: value } },
      },
    },
  },
}
