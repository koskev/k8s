{
  '#new':: { 'function': { help: |||
    A Replication Controller ensures that a specified number of pod “replicas” are running at any one time. In other words, a Replication Controller makes sure that a pod or homogeneous set of pods are always up and available. If there are too many pods, it will kill some. If there are too few, the Replication Controller will start more.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_replication_controller_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_replication_controller_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_replication_controller_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
