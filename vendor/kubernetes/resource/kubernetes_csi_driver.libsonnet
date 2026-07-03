{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_csi_driver+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_csi_driver+: { [terraformName]+: { id: value } },
      },
    },
  },
}
