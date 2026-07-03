{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_role_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_role_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
