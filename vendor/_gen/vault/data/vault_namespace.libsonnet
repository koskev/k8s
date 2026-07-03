{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_namespace+: { [terraformName]+: {
      } },
    },
    '#withCustomMetadata':: { 'function': { help: |||
      Metadata associated with this namespace. 
    ||| } },
    withCustomMetadata(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId':: { 'function': { help: |||
      Namespace ID. 
    ||| } },
    withNamespaceId(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Namespace path. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { path: value } },
      },
    },
    '#withPathFq':: { 'function': { help: |||
      The fully qualified namespace path. 
    ||| } },
    withPathFq(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { path_fq: value } },
      },
    },
  },
}
