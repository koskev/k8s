{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_cron_job_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_cron_job_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
