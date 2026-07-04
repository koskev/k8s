{
  '#new':: { 'function': { help: |||
    A Cron Job creates Jobs on a time-based schedule.One CronJob object is like one line of a crontab (cron table) file. It runs a job periodically on a given schedule, written in Cron format.Note: All CronJob `schedule` times are based on the timezone of the master where the job is initiated. For instructions on creating and working with cron jobs, and for an example of a spec file for a cron job, see [Kubernetes reference](https://kubernetes.io/docs/tasks/job/automated-tasks-with-cron-jobs/).
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_cron_job_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_cron_job_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_cron_job_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
