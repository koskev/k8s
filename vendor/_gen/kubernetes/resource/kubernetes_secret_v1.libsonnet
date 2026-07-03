{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_secret_v1+: { [terraformName]+: {
      } },
    },
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
}
