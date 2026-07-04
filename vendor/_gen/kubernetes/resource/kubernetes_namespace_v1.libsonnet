{
  '#new':: { 'function': { help: |||
    Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_namespace_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_namespace_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withWaitForDefaultServiceAccount':: { 'function': { help: |||
      Terraform will wait for the default service account to be created.
    ||| } },
    withWaitForDefaultServiceAccount(value):: self {
      resource+: {
        kubernetes_namespace_v1+: { [terraformName]+: { wait_for_default_service_account: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_namespace_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_for_default_service_account':: { 'function': { help: |||
        Terraform will wait for the default service account to be created.
      ||| } },
      wait_for_default_service_account(suffix=''):: refSelf.plain('.wait_for_default_service_account%s' % suffix),
    },
  },
}
