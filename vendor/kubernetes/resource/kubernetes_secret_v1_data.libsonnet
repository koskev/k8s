{
  new(terraformName, data):: {
    _type:: 'tf',
    resource+: {
      kubernetes_secret_v1_data+: { [terraformName]+: {
        data: data,
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { id: value } },
      },
    },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { field_manager: value } },
      },
    },
    withData(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { data: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        kubernetes_secret_v1_data+: { [terraformName]+: { force: value } },
      },
    },
  },
}
