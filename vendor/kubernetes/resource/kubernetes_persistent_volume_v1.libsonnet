{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
