{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_persistent_volume_claim+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_persistent_volume_claim+: { [terraformName]+: { id: value } },
      },
    },
  },
}
