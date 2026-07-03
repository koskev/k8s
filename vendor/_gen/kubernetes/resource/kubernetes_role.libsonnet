{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_role+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_role+: { [terraformName]+: { id: value } },
      },
    },
  },
}
