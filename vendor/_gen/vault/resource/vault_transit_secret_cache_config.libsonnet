{
  new(terraformName, backend, size):: {
    _type:: 'tf',
    resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: {
        backend: backend,
        size: size,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The Transit secret backend the resource belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_transit_secret_cache_config+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transit_secret_cache_config+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transit_secret_cache_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSize': { 'function': { help: |||
      Number of cache entries. A size of 0 mean unlimited. 
    ||| } },
    withSize(value):: self {
      resource+: {
        vault_transit_secret_cache_config+: { [terraformName]+: { size: value } },
      },
    },
  },
}
