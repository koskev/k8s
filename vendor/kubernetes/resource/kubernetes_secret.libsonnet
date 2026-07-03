{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_secret+: { [terraformName]+: {
      } },
    },
    withData(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { data: value } },
      },
    },
    withDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { data_wo_revision: value } },
      },
    },
    withImmutable(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { immutable: value } },
      },
    },
    withBinaryData(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { binary_data: value } },
      },
    },
    withType(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { type: value } },
      },
    },
    withBinaryDataWoRevision(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { binary_data_wo_revision: value } },
      },
    },
    withDataWo(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { data_wo: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { id: value } },
      },
    },
    withWaitForServiceAccountToken(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { wait_for_service_account_token: value } },
      },
    },
    withBinaryDataWo(value):: self {
      resource+: {
        kubernetes_secret+: { [terraformName]+: { binary_data_wo: value } },
      },
    },
  },
}
