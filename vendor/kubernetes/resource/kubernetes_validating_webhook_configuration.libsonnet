{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_validating_webhook_configuration+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_validating_webhook_configuration+: { [terraformName]+: { id: value } },
      },
    },
  },
}
