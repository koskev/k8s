{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_namespaces+: { [terraformName]+: {
      } },
    },
    withPathsFq(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { paths_fq: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { id: value } },
      },
    },
    withPaths(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { paths: value } },
      },
    },
    withRecursive(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { recursive: value } },
      },
    },
  },
}
