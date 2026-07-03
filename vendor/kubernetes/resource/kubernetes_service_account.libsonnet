{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_service_account+: { [terraformName]+: {
      } },
    },
    withDefaultSecretName(value):: self {
      resource+: {
        kubernetes_service_account+: { [terraformName]+: { default_secret_name: value } },
      },
    },
    withAutomountServiceAccountToken(value):: self {
      resource+: {
        kubernetes_service_account+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_service_account+: { [terraformName]+: { id: value } },
      },
    },
  },
}
