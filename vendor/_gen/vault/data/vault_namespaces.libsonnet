{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_namespaces+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPaths': { 'function': { help: |||
      Namespace paths. 
    ||| } },
    withPaths(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { paths: value } },
      },
    },
    '#withPathsFq': { 'function': { help: |||
      The fully qualified namespace paths. 
    ||| } },
    withPathsFq(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { paths_fq: value } },
      },
    },
    '#withRecursive': { 'function': { help: |||
      True to fetch all child namespaces. 
    ||| } },
    withRecursive(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { recursive: value } },
      },
    },
  },
}
