{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_service+: { [terraformName]+: {
      } },
    },
    withWaitForLoadBalancer(value):: self {
      resource+: {
        kubernetes_service+: { [terraformName]+: { wait_for_load_balancer: value } },
      },
    },
    withStatus(value):: self {
      resource+: {
        kubernetes_service+: { [terraformName]+: { status: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_service+: { [terraformName]+: { id: value } },
      },
    },
  },
}
