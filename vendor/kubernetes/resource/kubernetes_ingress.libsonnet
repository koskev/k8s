{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_ingress+: { [terraformName]+: {
      } },
    },
    withWaitForLoadBalancer(value):: self {
      resource+: {
        kubernetes_ingress+: { [terraformName]+: { wait_for_load_balancer: value } },
      },
    },
    withStatus(value):: self {
      resource+: {
        kubernetes_ingress+: { [terraformName]+: { status: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_ingress+: { [terraformName]+: { id: value } },
      },
    },
  },
}
