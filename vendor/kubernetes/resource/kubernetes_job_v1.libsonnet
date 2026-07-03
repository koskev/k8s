{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_job_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_job_v1+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForCompletion(value):: self {
      resource+: {
        kubernetes_job_v1+: { [terraformName]+: { wait_for_completion: value } },
      },
    },
  },
}
