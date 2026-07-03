{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_cron_job+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_cron_job+: { [terraformName]+: { id: value } },
      },
    },
  },
}
