{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_default_service_account_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAutomountServiceAccountToken':: { 'function': { help: |||
      Enable automatic mounting of the service account token 
    ||| } },
    withAutomountServiceAccountToken(value):: self {
      resource+: {
        kubernetes_default_service_account_v1+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_default_service_account_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_default_service_account_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#automount_service_account_token':: { 'function': { help: |||
        Enable automatic mounting of the service account token 
      ||| } },
      automount_service_account_token(suffix=''):: refSelf.plain('.automount_service_account_token%s' % suffix),
      default_secret_name(suffix=''):: refSelf.plain('.default_secret_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
