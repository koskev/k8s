{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_secret+: { [terraformName]+: {
      } },
    },
    withType(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { type: value } },
      },
    },
    withData(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { id: value } },
      },
    },
    withBinaryData(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { binary_data: value } },
      },
    },
    withImmutable(value):: self {
      data+: {
        kubernetes_secret+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
