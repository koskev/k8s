{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_namespace+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      Namespace path.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_namespace+: { [terraformName]+: { path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_namespace.%s%s }' % [terraformName, suffix],
    fields:: {
      '#custom_metadata':: { 'function': { help: |||
        Metadata associated with this namespace.
      ||| } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#namespace_id':: { 'function': { help: |||
        Namespace ID.
      ||| } },
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      '#path':: { 'function': { help: |||
        Namespace path.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#path_fq':: { 'function': { help: |||
        The fully qualified namespace path.
      ||| } },
      path_fq(suffix=''):: refSelf.plain('.path_fq%s' % suffix),
    },
  },
}
