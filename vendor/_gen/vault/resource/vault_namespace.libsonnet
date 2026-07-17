{
  local outerSelf = self,
  new(terraformName, path):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_namespace+: { [terraformName]+: {
        path: path,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { [name]: value } },
    } },
    '#withCustomMetadata':: { 'function': {
      help:
        |||
          Custom metadata describing this namespace. Value type is map[string]string.
        |||,
    } },
    withCustomMetadata(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { custom_metadata: value } },
    } },
    withId(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Namespace path.
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { path: value } },
    } },
    '#withPathFq':: { 'function': {
      help:
        |||
          The fully qualified namespace path.
        |||,
    } },
    withPathFq(value):: self { resource+: {
      vault_namespace+: { [terraformName]+: { path_fq: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_namespace.%s%s }' % [terraformName, suffix],
    fields:: {
      '#custom_metadata':: { 'function': {
        help:
          |||
            Custom metadata describing this namespace. Value type is map[string]string.
          |||,
      } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#namespace_id':: { 'function': {
        help:
          |||
            Namespace ID.
          |||,
      } },
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            Namespace path.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#path_fq':: { 'function': {
        help:
          |||
            The fully qualified namespace path.
          |||,
      } },
      path_fq(suffix=''):: refSelf.plain('.path_fq%s' % suffix),

    },

  },

}
