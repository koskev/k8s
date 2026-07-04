{
  local outerSelf = self,
  new(terraformName, api_version, kind):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_resource+: {
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
        kubernetes_resource+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { providers: value } },
      },
    },
    '#api_version':: { 'function': { help: |||
      The resource apiVersion.
    ||| } },
    withApiVersion(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { api_version: value } },
      },
    },
    '#kind':: { 'function': { help: |||
      The resource kind.
    ||| } },
    withKind(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { kind: value } },
      },
    },
    '#object':: { 'function': { help: |||
      The response from the API server.
    ||| } },
    withObject(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { object: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_resource.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_version':: { 'function': { help: |||
        The resource apiVersion.
      ||| } },
      api_version(suffix=''):: refSelf.plain('.api_version%s' % suffix),
      '#kind':: { 'function': { help: |||
        The resource kind.
      ||| } },
      kind(suffix=''):: refSelf.plain('.kind%s' % suffix),
      '#object':: { 'function': { help: |||
        The response from the API server.
      ||| } },
      object(suffix=''):: refSelf.plain('.object%s' % suffix),
    },
  },
}
