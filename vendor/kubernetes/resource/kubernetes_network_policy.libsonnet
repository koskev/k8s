{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_network_policy+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_network_policy+: { [terraformName]+: { id: value } },
      },
    },
  },
}
