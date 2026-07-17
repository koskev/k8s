{
  local outerSelf = self,
  new(terraformName, backend, size):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: {
        backend: backend,
        size: size,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          The Transit secret backend the resource belongs to.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { namespace: value } },
    } },
    '#withSize':: { 'function': {
      help:
        |||
          Number of cache entries. A size of 0 mean unlimited.
        |||,
    } },
    withSize(value):: self { resource+: {
      vault_transit_secret_cache_config+: { [terraformName]+: { size: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_transit_secret_cache_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            The Transit secret backend the resource belongs to.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#size':: { 'function': {
        help:
          |||
            Number of cache entries. A size of 0 mean unlimited.
          |||,
      } },
      size(suffix=''):: refSelf.plain('.size%s' % suffix),

    },

  },

}
