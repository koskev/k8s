{
  new(terraformName, api_version, kind, labels):: {
    _type:: 'tf',
    resource+: {
      kubernetes_labels+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
        labels: labels,
      } },
    },
    '#withApiVersion': { 'function': { help: |||
      The apiVersion of the resource to label. 
    ||| } },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { api_version: value } },
      },
    },
    '#withFieldManager': { 'function': { help: |||
      Set the name of the field manager for the specified labels. 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce': { 'function': { help: |||
      Force overwriting labels that were created or edited outside of Terraform. 
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { id: value } },
      },
    },
    '#withKind': { 'function': { help: |||
      The kind of the resource to label. 
    ||| } },
    withKind(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { kind: value } },
      },
    },
    '#withLabels': { 'function': { help: |||
      A map of labels to apply to the resource. 
    ||| } },
    withLabels(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { labels: value } },
      },
    },
  },
}
