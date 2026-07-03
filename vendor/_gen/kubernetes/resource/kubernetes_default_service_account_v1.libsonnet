{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_default_service_account_v1+: { [terraformName]+: {
      } },
    },
    '#withAutomountServiceAccountToken': { 'function': { help: |||
      Enable automatic mounting of the service account token 
    ||| } },
    withAutomountServiceAccountToken(value):: self {
      resource+: {
        kubernetes_default_service_account_v1+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
    withDefaultSecretName(value):: self {
      resource+: {
        kubernetes_default_service_account_v1+: { [terraformName]+: { default_secret_name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_default_service_account_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
