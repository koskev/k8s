{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_namespace+: { [terraformName]+: {
        path: path,
      } },
    },
    '#withCustomMetadata': { 'function': { help: |||
      Custom metadata describing this namespace. Value type is map[string]string. 
    ||| } },
    withCustomMetadata(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId': { 'function': { help: |||
      Namespace ID. 
    ||| } },
    withNamespaceId(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Namespace path. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { path: value } },
      },
    },
    '#withPathFq': { 'function': { help: |||
      The fully qualified namespace path. 
    ||| } },
    withPathFq(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { path_fq: value } },
      },
    },
  },
}
