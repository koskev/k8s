{
  '#new':: { 'function': { help: |||
    A PersistentVolumeClaim (PVC) is a request for storage by a user. This data source retrieves information about the specified PVC.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_persistent_volume_claim+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_persistent_volume_claim.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
