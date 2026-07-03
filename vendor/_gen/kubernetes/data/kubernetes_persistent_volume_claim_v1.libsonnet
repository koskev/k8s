{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_persistent_volume_claim_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_persistent_volume_claim_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
