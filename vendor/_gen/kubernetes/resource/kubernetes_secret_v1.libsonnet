{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_secret_v1+: {
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
        kubernetes_secret_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    '#withBinaryDataWo':: { 'function': { help: |||
      A write-only map of the secret data in base64 encoding. Use this for binary data. 
    ||| } },
    withBinaryDataWo(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data_wo: value } },
      },
    },
    '#withBinaryDataWoRevision':: { 'function': { help: |||
      The current revision of the write-only "binary_data_wo" attribute. Incrementing this integer value will cause Terraform to update the write-only value. 
    ||| } },
    withBinaryDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data_wo_revision: value } },
      },
    },
    '#withData':: { 'function': { help: |||
      A map of the secret data. 
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { data: value } },
      },
    },
    '#withDataWo':: { 'function': { help: |||
      A map write-only of the secret data. 
    ||| } },
    withDataWo(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { data_wo: value } },
      },
    },
    '#withDataWoRevision':: { 'function': { help: |||
      The current revision of the write-only "data_wo" attribute. Incrementing this integer value will cause Terraform to update the write-only value. 
    ||| } },
    withDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { data_wo_revision: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withImmutable':: { 'function': { help: |||
      Ensures that data stored in the Secret cannot be updated (only object metadata can be modified). 
    ||| } },
    withImmutable(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { immutable: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of secret 
    ||| } },
    withType(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { type: value } },
      },
    },
    '#withWaitForServiceAccountToken':: { 'function': { help: |||
      Terraform will wait for the service account token to be created. 
    ||| } },
    withWaitForServiceAccountToken(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { wait_for_service_account_token: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_secret_v1.%s%s }' % [terraformName, suffix],
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
