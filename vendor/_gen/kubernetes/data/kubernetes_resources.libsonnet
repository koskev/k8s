{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    data+: {
      kubernetes_resources+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    '#withApiVersion':: { 'function': { help: |||
      The resource apiVersion. 
    ||| } },
    withApiVersion(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { api_version: value } },
      },
    },
    '#withFieldSelector':: { 'function': { help: |||
      A selector to restrict the list of returned objects by their fields. 
    ||| } },
    withFieldSelector(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { field_selector: value } },
      },
    },
    '#withKind':: { 'function': { help: |||
      The resource kind. 
    ||| } },
    withKind(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { kind: value } },
      },
    },
    '#withLabelSelector':: { 'function': { help: |||
      A selector to restrict the list of returned objects by their labels. 
    ||| } },
    withLabelSelector(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { label_selector: value } },
      },
    },
    '#withLimit':: { 'function': { help: |||
      Limit is a maximum number of responses to return for a list call. 
    ||| } },
    withLimit(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { limit: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      The resource namespace. 
    ||| } },
    withNamespace(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withObjects':: { 'function': { help: |||
      The response from the API server. 
    ||| } },
    withObjects(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { objects: value } },
      },
    },
  },
}
