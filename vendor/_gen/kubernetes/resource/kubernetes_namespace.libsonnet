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
    '#withWaitForDefaultServiceAccount': { 'function': { help: |||
      Terraform will wait for the default service account to be created. 
    ||| } },
    withWaitForDefaultServiceAccount(value):: self {
      resource+: {
        kubernetes_namespace+: { [terraformName]+: { wait_for_default_service_account: value } },
      },
    },
  },
}
