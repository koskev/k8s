{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_service_v1+: { [terraformName]+: {
      } },
    },
    withStatus(value):: self {
      resource+: {
        kubernetes_service_v1+: { [terraformName]+: { status: value } },
      },
    },
    withWaitForLoadBalancer(value):: self {
      resource+: {
        kubernetes_service_v1+: { [terraformName]+: { wait_for_load_balancer: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_service_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
