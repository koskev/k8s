{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        A pod is a group of one or more containers, the shared storage for those containers, and options about how to run the containers. Pods are always co-located and co-scheduled, and run in a shared context. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod/.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      kubernetes_pod_v1+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      kubernetes_pod_v1+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_pod_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#spec':: { 'function': {
        help:
          |||
            Specification of the desired behavior of the pod.
          |||,
      } },
      spec(suffix=''):: refSelf.plain('.spec%s' % suffix),
      status(suffix=''):: refSelf.plain('.status%s' % suffix),

    },

  },

}
