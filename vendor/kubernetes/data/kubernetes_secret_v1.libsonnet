{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_secret_v1+: { [terraformName]+: {
      } },
    },
    withData(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { data: value } },
      },
    },
    withBinaryData(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { id: value } },
      },
    },
    withType(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { type: value } },
      },
    },
    withImmutable(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
