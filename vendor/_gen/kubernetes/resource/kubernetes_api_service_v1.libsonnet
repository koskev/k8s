{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_api_service_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_api_service_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
