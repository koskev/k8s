{
  '#new':: { 'function': { help: |||
    The resource provides a piece of networked storage in the cluster provisioned by an administrator. It is a resource in the cluster just like a node is a cluster resource. Persistent Volumes have a lifecycle independent of any individual pod that uses the PV. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_persistent_volume.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
