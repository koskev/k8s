{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_job+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_job+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForCompletion(value):: self {
      resource+: {
        kubernetes_job+: { [terraformName]+: { wait_for_completion: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_job.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      wait_for_completion(suffix=''):: refSelf.plain('.wait_for_completion%s' % suffix),
    },
  },
}
