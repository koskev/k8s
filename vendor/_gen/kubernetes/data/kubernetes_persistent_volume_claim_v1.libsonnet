{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        A PersistentVolumeClaim (PVC) is a request for storage by a user. This data source retrieves information about the specified PVC.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_persistent_volume_claim_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),

    },

  },

}
