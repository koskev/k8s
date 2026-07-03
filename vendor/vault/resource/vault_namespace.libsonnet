{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_namespace+: { [terraformName]+: {
        path: path,
      } },
    },
    withPathFq(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { path_fq: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { path: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { id: value } },
      },
    },
    withCustomMetadata(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_namespace+: { [terraformName]+: { namespace_id: value } },
      },
    },
  },
}
