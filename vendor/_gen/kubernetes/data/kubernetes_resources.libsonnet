{
  local outerSelf = self,
  new(terraformName, api_version, kind):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
    withForEach(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { providers: value } },
      },
    },
    '#api_version':: { 'function': { help: |||
      The resource apiVersion.
    ||| } },
    withApiVersion(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { api_version: value } },
      },
    },
    '#field_selector':: { 'function': { help: |||
      A selector to restrict the list of returned objects by their fields.
    ||| } },
    withFieldSelector(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { field_selector: value } },
      },
    },
    '#kind':: { 'function': { help: |||
      The resource kind.
    ||| } },
    withKind(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { kind: value } },
      },
    },
    '#label_selector':: { 'function': { help: |||
      A selector to restrict the list of returned objects by their labels.
    ||| } },
    withLabelSelector(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { label_selector: value } },
      },
    },
    '#limit':: { 'function': { help: |||
      Limit is a maximum number of responses to return for a list call.
    ||| } },
    withLimit(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { limit: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      The resource namespace.
    ||| } },
    withNamespace(value):: self {
      data+: {
        kubernetes_resources+: { [terraformName]+: { namespace: value } },
      },
    },
    '#objects':: { 'function': { help: |||
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
