{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_namespace+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_namespace+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForDefaultServiceAccount':: { 'function': { help: |||
      Terraform will wait for the default service account to be created. 
    ||| } },
    withWaitForDefaultServiceAccount(value):: self {
      resource+: {
        kubernetes_namespace+: { [terraformName]+: { wait_for_default_service_account: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_namespace.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_for_default_service_account':: { 'function': { help: |||
        Terraform will wait for the default service account to be created. 
      ||| } },
      wait_for_default_service_account(suffix=''):: refSelf.plain('.wait_for_default_service_account%s' % suffix),
    },
  },
}
