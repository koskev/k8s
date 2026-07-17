{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        This resource allows the user to request for and claim to a persistent volume.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { id: value } },
    } },
    '#withWaitUntilBound':: { 'function': {
      help:
        |||
          Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space)
        |||,
    } },
    withWaitUntilBound(value):: self { resource+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { wait_until_bound: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_persistent_volume_claim_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_until_bound':: { 'function': {
        help:
          |||
            Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space)
          |||,
      } },
      wait_until_bound(suffix=''):: refSelf.plain('.wait_until_bound%s' % suffix),

    },

  },

}
