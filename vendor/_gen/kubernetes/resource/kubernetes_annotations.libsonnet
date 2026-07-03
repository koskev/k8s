{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    resource+: {
      kubernetes_annotations+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    '#withAnnotations':: { 'function': { help: |||
      A map of annotations to apply to the resource. 
    ||| } },
    withAnnotations(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { annotations: value } },
      },
    },
    '#withApiVersion':: { 'function': { help: |||
      The apiVersion of the resource to annotate. 
    ||| } },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { api_version: value } },
      },
    },
    '#withFieldManager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels. 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
      Force overwriting annotations that were created or edited outside of Terraform. 
    ||| } },
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
    '#withKind':: { 'function': { help: |||
      The kind of the resource to annotate. 
    ||| } },
    withKind(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { kind: value } },
      },
    },
    '#withTemplateAnnotations':: { 'function': { help: |||
      A map of annotations to apply to the resource template. 
    ||| } },
    withTemplateAnnotations(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { template_annotations: value } },
      },
    },
  },
}
