{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_resource_quota_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_resource_quota_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
