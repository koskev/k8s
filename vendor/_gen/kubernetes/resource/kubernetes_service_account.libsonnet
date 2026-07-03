{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_service_account+: { [terraformName]+: {
      } },
    },
    '#withAutomountServiceAccountToken':: { 'function': { help: |||
      Enable automatic mounting of the service account token 
    ||| } },
    withAutomountServiceAccountToken(value):: self {
      resource+: {
        kubernetes_service_account+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
    withDefaultSecretName(value):: self {
      resource+: {
        kubernetes_service_account+: { [terraformName]+: { default_secret_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_service_account+: { [terraformName]+: { id: value } },
      },
    },
  },
}
