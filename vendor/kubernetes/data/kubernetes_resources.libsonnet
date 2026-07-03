{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    data+: {
      kubernetes_resources+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    withFieldSelector(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { field_selector: value } },
      },
    },
    withLabelSelector(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { label_selector: value } },
      },
    },
    withLimit(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { limit: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { namespace: value } },
      },
    },
    withApiVersion(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { api_version: value } },
      },
    },
    withKind(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { kind: value } },
      },
    },
    withObjects(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { objects: value } },
      },
    },
  },
}
