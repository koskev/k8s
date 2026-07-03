{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_mutating_webhook_configuration+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_mutating_webhook_configuration+: { [terraformName]+: { id: value } },
      },
    },
  },
}
