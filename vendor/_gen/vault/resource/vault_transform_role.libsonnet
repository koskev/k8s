{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_transform_role+: {
        [terraformName]+: {
          name: name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { id: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The name of the role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws".
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { path: value } },
      },
    },
    '#transformations':: { 'function': { help: |||
      A comma separated string or slice of transformations to use.
    ||| } },
    withTransformations(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { transformations: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_transform_role.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws".
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#transformations':: { 'function': { help: |||
        A comma separated string or slice of transformations to use.
      ||| } },
      transformations(suffix=''):: refSelf.plain('.transformations%s' % suffix),
    },
  },
}
