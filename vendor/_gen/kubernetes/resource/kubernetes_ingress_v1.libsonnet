{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_ingress_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_ingress_v1+: { [terraformName]+: { id: value } },
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_ingress_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      status(suffix=''):: refSelf.plain('.status%s' % suffix),
      '#wait_for_load_balancer':: { 'function': { help: |||
        Terraform will wait for the load balancer to have at least 1 endpoint before considering the resource created. 
      ||| } },
      wait_for_load_balancer(suffix=''):: refSelf.plain('.wait_for_load_balancer%s' % suffix),
    },
  },
}
