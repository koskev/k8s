{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_network_policy_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_network_policy_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
