{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_ingress_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_ingress_v1+: { [terraformName]+: { id: value } },
      },
    },
    withStatus(value):: self {
      resource+: {
        kubernetes_ingress_v1+: { [terraformName]+: { status: value } },
      },
    },
    '#withWaitForLoadBalancer':: { 'function': { help: |||
      Terraform will wait for the load balancer to have at least 1 endpoint before considering the resource created. 
    ||| } },
    withWaitForLoadBalancer(value):: self {
      resource+: {
        kubernetes_ingress_v1+: { [terraformName]+: { wait_for_load_balancer: value } },
      },
    },
  },
}
