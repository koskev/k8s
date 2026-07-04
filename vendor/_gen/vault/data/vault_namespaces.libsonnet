{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_namespaces+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { namespace: value } },
      },
    },
    '#recursive':: { 'function': { help: |||
      True to fetch all child namespaces.
    ||| } },
    withRecursive(value):: self {
      data+: {
        vault_namespaces+: { [terraformName]+: { recursive: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_namespaces.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#paths':: { 'function': { help: |||
        Namespace paths.
      ||| } },
      paths(suffix=''):: refSelf.plain('.paths%s' % suffix),
      '#paths_fq':: { 'function': { help: |||
        The fully qualified namespace paths.
      ||| } },
      paths_fq(suffix=''):: refSelf.plain('.paths_fq%s' % suffix),
      '#recursive':: { 'function': { help: |||
        True to fetch all child namespaces.
      ||| } },
      recursive(suffix=''):: refSelf.plain('.recursive%s' % suffix),
    },
  },
}
