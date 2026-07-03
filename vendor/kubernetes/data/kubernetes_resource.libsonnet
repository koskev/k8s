{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    data+: {
      kubernetes_resource+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    withApiVersion(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { api_version: value } },
      },
    },
    withKind(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { kind: value } },
      },
    },
    withObject(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { object: value } },
      },
    },
  },
}
