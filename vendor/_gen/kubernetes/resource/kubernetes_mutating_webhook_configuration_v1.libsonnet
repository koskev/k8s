{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
