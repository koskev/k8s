{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_default_service_account+: { [terraformName]+: {
      } },
    },
    withAutomountServiceAccountToken(value):: self {
      resource+: {
        kubernetes_default_service_account+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_default_service_account+: { [terraformName]+: { id: value } },
      },
    },
    withDefaultSecretName(value):: self {
      resource+: {
        kubernetes_default_service_account+: { [terraformName]+: { default_secret_name: value } },
      },
    },
  },
}
