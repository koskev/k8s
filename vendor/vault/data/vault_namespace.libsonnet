{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_namespace+: { [terraformName]+: {
      } },
    },
    withPath(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { path: value } },
      },
    },
    withPathFq(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { path_fq: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { id: value } },
      },
    },
    withNamespaceId(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withCustomMetadata(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { custom_metadata: value } },
      },
    },
  },
}
