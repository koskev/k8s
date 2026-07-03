{
  new(terraformName, kind, labels, api_version):: {
    _type:: 'tf',
    resource+: {
      kubernetes_labels+: { [terraformName]+: {
        kind: kind,
        labels: labels,
        api_version: api_version,
      } },
    },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { field_manager: value } },
      },
    },
    withKind(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { kind: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { force: value } },
      },
    },
    withLabels(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { labels: value } },
      },
    },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { api_version: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { id: value } },
      },
    },
  },
}
