{
  '#new':: { 'function': { help: |||
    A Service is an abstraction which defines a logical set of pods and a policy by which to access them - sometimes called a micro-service.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_service_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_service_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForLoadBalancer':: { 'function': { help: |||
      Terraform will wait for the load balancer to have at least 1 endpoint before considering the resource created.
    ||| } },
    withWaitForLoadBalancer(value):: self {
      resource+: {
        kubernetes_service_v1+: { [terraformName]+: { wait_for_load_balancer: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_service_v1.%s%s }' % [terraformName, suffix],
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
