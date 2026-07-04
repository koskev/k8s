{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_transform_alphabet+: {
        [terraformName]+: {
          name: name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAlphabet':: { 'function': { help: |||
      A string of characters that contains the alphabet set.
    ||| } },
    withAlphabet(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { alphabet: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the alphabet.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws".
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { path: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_transform_alphabet.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alphabet':: { 'function': { help: |||
        A string of characters that contains the alphabet set.
      ||| } },
      alphabet(suffix=''):: refSelf.plain('.alphabet%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the alphabet.
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
    },
  },
}
