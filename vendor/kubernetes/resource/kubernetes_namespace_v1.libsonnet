{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_namespace_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_namespace_v1+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForDefaultServiceAccount(value):: self {
      resource+: {
        kubernetes_namespace_v1+: { [terraformName]+: { wait_for_default_service_account: value } },
      },
    },
  },
}
