{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_job+: { [terraformName]+: {
      } },
    },
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
}
