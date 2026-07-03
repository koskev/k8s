{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_service_account_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_service_account_v1+: { [terraformName]+: { id: value } },
      },
    },
    withImagePullSecret(value):: self {
      data+: {
        kubernetes_service_account_v1+: { [terraformName]+: { image_pull_secret: value } },
      },
    },
    withSecret(value):: self {
      data+: {
        kubernetes_service_account_v1+: { [terraformName]+: { secret: value } },
      },
    },
    withDefaultSecretName(value):: self {
      data+: {
        kubernetes_service_account_v1+: { [terraformName]+: { default_secret_name: value } },
      },
    },
    withAutomountServiceAccountToken(value):: self {
      data+: {
        kubernetes_service_account_v1+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
  },
}
