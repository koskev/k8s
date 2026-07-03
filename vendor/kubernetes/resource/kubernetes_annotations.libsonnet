{
  new(terraformName, kind, api_version):: {
    _type:: 'tf',
    resource+: {
      kubernetes_annotations+: { [terraformName]+: {
        kind: kind,
        api_version: api_version,
      } },
    },
    withKind(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { kind: value } },
      },
    },
    withForce(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { id: value } },
      },
    },
    withTemplateAnnotations(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { template_annotations: value } },
      },
    },
    withAnnotations(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { annotations: value } },
      },
    },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { api_version: value } },
      },
    },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { field_manager: value } },
      },
    },
  },
}
