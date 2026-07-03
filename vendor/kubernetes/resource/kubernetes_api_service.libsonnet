{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_api_service+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_api_service+: { [terraformName]+: { id: value } },
      },
    },
  },
}
