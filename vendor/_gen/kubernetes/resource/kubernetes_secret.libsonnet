{
  '#new':: { 'function': { help: |||
    The resource provides mechanisms to inject containers with sensitive information, such as passwords, while keeping containers agnostic of Kubernetes. Secrets can be used to store sensitive information either as individual properties or coarse-grained entries like entire files or JSON blobs. The resource will by default create a secret which is available to any pod in the specified (or default) namespace.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_secret+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBinaryData':: { 'function': { help: |||
      A map of the secret data in base64 encoding. Use this for binary data.
    ||| } },
    withBinaryData(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { binary_data: value } },
      },
    },
    '#withBinaryDataWo':: { 'function': { help: |||
      A write-only map of the secret data in base64 encoding. Use this for binary data.
    ||| } },
    withBinaryDataWo(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { binary_data_wo: value } },
      },
    },
    '#withBinaryDataWoRevision':: { 'function': { help: |||
      The current revision of the write-only "binary_data_wo" attribute. Incrementing this integer value will cause Terraform to update the write-only value.
    ||| } },
    withBinaryDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { binary_data_wo_revision: value } },
      },
    },
    '#withData':: { 'function': { help: |||
      A map of the secret data.
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataWo':: { 'function': { help: |||
      A map write-only of the secret data.
    ||| } },
    withDataWo(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { data_wo: value } },
      },
    },
    '#withDataWoRevision':: { 'function': { help: |||
      The current revision of the write-only "data_wo" attribute. Incrementing this integer value will cause Terraform to update the write-only value.
    ||| } },
    withDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { data_wo_revision: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { id: value } },
      },
    },
    '#withImmutable':: { 'function': { help: |||
      Ensures that data stored in the Secret cannot be updated (only object metadata can be modified).
    ||| } },
    withImmutable(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { immutable: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of secret
    ||| } },
    withType(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { type: value } },
      },
    },
    '#withWaitForServiceAccountToken':: { 'function': { help: |||
      Terraform will wait for the service account token to be created.
    ||| } },
    withWaitForServiceAccountToken(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { wait_for_service_account_token: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#binary_data':: { 'function': { help: |||
        A map of the secret data in base64 encoding. Use this for binary data.
      ||| } },
      binary_data(suffix=''):: refSelf.plain('.binary_data%s' % suffix),
      '#binary_data_wo':: { 'function': { help: |||
        A write-only map of the secret data in base64 encoding. Use this for binary data.
      ||| } },
      binary_data_wo(suffix=''):: refSelf.plain('.binary_data_wo%s' % suffix),
      '#binary_data_wo_revision':: { 'function': { help: |||
        The current revision of the write-only "binary_data_wo" attribute. Incrementing this integer value will cause Terraform to update the write-only value.
      ||| } },
      binary_data_wo_revision(suffix=''):: refSelf.plain('.binary_data_wo_revision%s' % suffix),
      '#data':: { 'function': { help: |||
        A map of the secret data.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_wo':: { 'function': { help: |||
        A map write-only of the secret data.
      ||| } },
      data_wo(suffix=''):: refSelf.plain('.data_wo%s' % suffix),
      '#data_wo_revision':: { 'function': { help: |||
        The current revision of the write-only "data_wo" attribute. Incrementing this integer value will cause Terraform to update the write-only value.
      ||| } },
      data_wo_revision(suffix=''):: refSelf.plain('.data_wo_revision%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#immutable':: { 'function': { help: |||
        Ensures that data stored in the Secret cannot be updated (only object metadata can be modified).
      ||| } },
      immutable(suffix=''):: refSelf.plain('.immutable%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of secret
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#wait_for_service_account_token':: { 'function': { help: |||
        Terraform will wait for the service account token to be created.
      ||| } },
      wait_for_service_account_token(suffix=''):: refSelf.plain('.wait_for_service_account_token%s' % suffix),
    },
  },
}
