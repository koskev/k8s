{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      kubernetes_namespace+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { id: value } },
    } },
    '#withWaitForDefaultServiceAccount':: { 'function': {
      help:
        |||
          Terraform will wait for the default service account to be created.
        |||,
    } },
    withWaitForDefaultServiceAccount(value):: self { resource+: {
      kubernetes_namespace+: { [terraformName]+: { wait_for_default_service_account: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_namespace.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#wait_for_default_service_account':: { 'function': {
        help:
          |||
            Terraform will wait for the default service account to be created.
          |||,
      } },
      wait_for_default_service_account(suffix=''):: refSelf.plain('.wait_for_default_service_account%s' % suffix),

    },

  },

}
