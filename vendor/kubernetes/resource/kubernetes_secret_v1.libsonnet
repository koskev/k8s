{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_secret_v1+: { [terraformName]+: {
      } },
    },
    withType(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { type: value } },
      },
    },
    withBinaryDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data_wo_revision: value } },
      },
    },
    withData(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForServiceAccountToken(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { wait_for_service_account_token: value } },
      },
    },
    withDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { data_wo_revision: value } },
      },
    },
    withBinaryData(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    withImmutable(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { immutable: value } },
      },
    },
    withDataWo(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { data_wo: value } },
      },
    },
    withBinaryDataWo(value):: self {
      resource+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data_wo: value } },
      },
    },
  },
}
