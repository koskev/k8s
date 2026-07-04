{
  '#new':: { 'function': { help: |||
    A service account provides an identity for processes that run in a Pod. This data source reads the service account and makes specific attributes available to Terraform. More info: https://kubernetes.io/docs/reference/access-authn-authz/service-accounts-admin/.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_service_account+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        kubernetes_service_account+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_service_account.%s%s }' % [terraformName, suffix],
    fields:: {
      '#automount_service_account_token':: { 'function': { help: |||
        True to enable automatic mounting of the service account token
      ||| } },
      automount_service_account_token(suffix=''):: refSelf.plain('.automount_service_account_token%s' % suffix),
      default_secret_name(suffix=''):: refSelf.plain('.default_secret_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#image_pull_secret':: { 'function': { help: |||
        A list of references to secrets in the same namespace to use for pulling any images in pods that reference this Service Account. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod
      ||| } },
      image_pull_secret(suffix=''):: refSelf.plain('.image_pull_secret%s' % suffix),
      '#secret':: { 'function': { help: |||
        A list of secrets allowed to be used by pods running using this Service Account. More info: https://kubernetes.io/docs/concepts/configuration/secret
      ||| } },
      secret(suffix=''):: refSelf.plain('.secret%s' % suffix),
    },
  },
}
