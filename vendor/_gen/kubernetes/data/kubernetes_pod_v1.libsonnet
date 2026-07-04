{
  '#new':: { 'function': { help: |||
    A pod is a group of one or more containers, the shared storage for those containers, and options about how to run the containers. Pods are always co-located and co-scheduled, and run in a shared context. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod/.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_pod_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_pod_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_pod_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#spec':: { 'function': { help: |||
        Specification of the desired behavior of the pod.
      ||| } },
      spec(suffix=''):: refSelf.plain('.spec%s' % suffix),
      status(suffix=''):: refSelf.plain('.status%s' % suffix),
    },
  },
}
