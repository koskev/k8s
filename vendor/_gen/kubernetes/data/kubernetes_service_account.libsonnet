{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_service_account+: { [terraformName]+: {
      } },
    },
    '#withAutomountServiceAccountToken':: { 'function': { help: |||
      True to enable automatic mounting of the service account token 
    ||| } },
    withAutomountServiceAccountToken(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { automount_service_account_token: value } },
      },
    },
    withDefaultSecretName(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { default_secret_name: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { id: value } },
      },
    },
    '#withImagePullSecret':: { 'function': { help: |||
      A list of references to secrets in the same namespace to use for pulling any images in pods that reference this Service Account. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod 
    ||| } },
    withImagePullSecret(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { image_pull_secret: value } },
      },
    },
    '#withSecret':: { 'function': { help: |||
      A list of secrets allowed to be used by pods running using this Service Account. More info: https://kubernetes.io/docs/concepts/configuration/secret 
    ||| } },
    withSecret(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { secret: value } },
      },
    },
  },
}
