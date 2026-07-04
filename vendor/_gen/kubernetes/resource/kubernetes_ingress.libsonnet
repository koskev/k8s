{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_ingress+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_ingress+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForLoadBalancer':: { 'function': { help: |||
      Terraform will wait for the load balancer to have at least 1 endpoint before considering the resource created.
    ||| } },
    withWaitForLoadBalancer(value):: self {
      resource+: {
        kubernetes_ingress+: { [terraformName]+: { wait_for_load_balancer: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_ingress.%s%s }' % [terraformName, suffix],
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
