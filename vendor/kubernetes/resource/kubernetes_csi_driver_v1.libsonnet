{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_csi_driver_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_csi_driver_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
