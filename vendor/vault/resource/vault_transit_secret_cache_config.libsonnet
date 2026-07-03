{
  new(terraformName, size, backend):: {
    _type:: 'tf',
    resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: {
        size: size,
        backend: backend,
      } },
    },
    withSize(value):: self {
      resource+: {
        vault_transit_secret_cache_config+: { [terraformName]+: { size: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_transit_secret_cache_config+: { [terraformName]+: { namespace: value } },
      },
    },
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
  },
}
