{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_persistent_volume+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_persistent_volume+: { [terraformName]+: { id: value } },
      },
    },
  },
}
