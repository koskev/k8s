{
  '#new':: { 'function': { help: |||
    This resource allows the user to request for and claim to a persistent volume.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume_claim+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { id: value } },
      },
    },
    '#wait_until_bound':: { 'function': { help: |||
      Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space)
    ||| } },
    withWaitUntilBound(value):: self {
      resource+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { wait_until_bound: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_persistent_volume_claim.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_until_bound':: { 'function': { help: |||
        Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space)
      ||| } },
      wait_until_bound(suffix=''):: refSelf.plain('.wait_until_bound%s' % suffix),
    },
  },
}
