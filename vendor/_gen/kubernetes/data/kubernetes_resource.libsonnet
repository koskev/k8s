{
  new(terraformName, api_version, kind):: {
    _type:: 'tf',
    data+: {
      kubernetes_resource+: { [terraformName]+: {
        api_version: api_version,
        kind: kind,
      } },
    },
    '#withApiVersion':: { 'function': { help: |||
      The resource apiVersion. 
    ||| } },
    withApiVersion(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { api_version: value } },
      },
    },
    '#withKind':: { 'function': { help: |||
      The resource kind. 
    ||| } },
    withKind(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { kind: value } },
      },
    },
    '#withObject':: { 'function': { help: |||
      The response from the API server. 
    ||| } },
    withObject(value):: self {
      data+: {
        kubernetes_resource+: { [terraformName]+: { object: value } },
      },
    },
  },
}
