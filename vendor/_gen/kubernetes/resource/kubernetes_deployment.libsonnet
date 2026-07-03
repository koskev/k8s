{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_deployment+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_deployment+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForRollout':: { 'function': { help: |||
      Wait for the rollout of the deployment to complete. Defaults to true. 
    ||| } },
    withWaitForRollout(value):: self {
      resource+: {
        kubernetes_deployment+: { [terraformName]+: { wait_for_rollout: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_deployment.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_for_rollout':: { 'function': { help: |||
        Wait for the rollout of the deployment to complete. Defaults to true. 
      ||| } },
      wait_for_rollout(suffix=''):: refSelf.plain('.wait_for_rollout%s' % suffix),
    },
  },
}
