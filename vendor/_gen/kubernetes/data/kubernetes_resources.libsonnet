{
  new(terraformName, api_version, kind):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      kubernetes_resources+: {
        [terraformName]+: {
          api_version: api_version,
          kind: kind,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_resources.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_version':: { 'function': { help: |||
        The resource apiVersion. 
      ||| } },
      api_version(suffix=''):: refSelf.plain('.api_version%s' % suffix),
      '#field_selector':: { 'function': { help: |||
        A selector to restrict the list of returned objects by their fields. 
      ||| } },
      field_selector(suffix=''):: refSelf.plain('.field_selector%s' % suffix),
      '#kind':: { 'function': { help: |||
        The resource kind. 
      ||| } },
      kind(suffix=''):: refSelf.plain('.kind%s' % suffix),
      '#label_selector':: { 'function': { help: |||
        A selector to restrict the list of returned objects by their labels. 
      ||| } },
      label_selector(suffix=''):: refSelf.plain('.label_selector%s' % suffix),
      '#limit':: { 'function': { help: |||
        Limit is a maximum number of responses to return for a list call. 
      ||| } },
      limit(suffix=''):: refSelf.plain('.limit%s' % suffix),
      '#namespace':: { 'function': { help: |||
        The resource namespace. 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#objects':: { 'function': { help: |||
        The response from the API server. 
      ||| } },
      objects(suffix=''):: refSelf.plain('.objects%s' % suffix),
    },
  },
}
