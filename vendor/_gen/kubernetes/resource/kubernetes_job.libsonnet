{
  '#new':: { 'function': { help: |||
    A Job creates one or more Pods and ensures that a specified number of them successfully terminate. As pods successfully complete, the Job tracks the successful completions. When a specified number of successful completions is reached, the task (ie, Job) is complete. Deleting a Job will clean up the Pods it created. A simple case is to create one Job object in order to reliably run one Pod to completion. The Job object will start a new Pod if the first Pod fails or is deleted (for example due to a node hardware failure or a node reboot. You can also use a Job to run multiple Pods in parallel. 
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
