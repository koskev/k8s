{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_service_account+: { [terraformName]+: {
      } },
    },
    withSecret(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { secret: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { id: value } },
      },
    },
    withDefaultSecretName(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { default_secret_name: value } },
      },
    },
    withImagePullSecret(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { image_pull_secret: value } },
      },
    },
    withAutomountServiceAccountToken(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
  },
}
