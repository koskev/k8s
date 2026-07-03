{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_namespace+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_namespace+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForDefaultServiceAccount(value):: self {
      resource+: {
        kubernetes_namespace+: { [terraformName]+: { wait_for_default_service_account: value } },
      },
    },
  },
}
