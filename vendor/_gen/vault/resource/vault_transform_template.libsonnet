{
  local outerSelf = self,
  new(terraformName, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_transform_template+: {
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
        vault_transform_template+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { providers: value } },
      },
    },
    '#alphabet':: { 'function': { help: |||
      The alphabet to use for this template. This is only used during FPE transformations.
    ||| } },
    withAlphabet(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { alphabet: value } },
      },
    },
    '#decode_formats':: { 'function': { help: |||
      The map of regular expression templates used to customize decoded outputs.
      Only applicable to FPE transformations.
    ||| } },
    withDecodeFormats(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { decode_formats: value } },
      },
    },
    '#encode_format':: { 'function': { help: |||
      The regular expression template used for encoding values.
      Only applicable to FPE transformations.
    ||| } },
    withEncodeFormat(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { encode_format: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { id: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The name of the template.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
      The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws".
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { path: value } },
      },
    },
    '#pattern':: { 'function': { help: |||
      The pattern used for matching. Currently, only regular expression pattern is supported.
    ||| } },
    withPattern(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { pattern: value } },
      },
    },
    '#type':: { 'function': { help: |||
      The pattern type to use for match detection. Currently, only regex is supported.
    ||| } },
    withType(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_transform_template.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alphabet':: { 'function': { help: |||
        The alphabet to use for this template. This is only used during FPE transformations.
      ||| } },
      alphabet(suffix=''):: refSelf.plain('.alphabet%s' % suffix),
      '#decode_formats':: { 'function': { help: |||
        The map of regular expression templates used to customize decoded outputs.
        Only applicable to FPE transformations.
      ||| } },
      decode_formats(suffix=''):: refSelf.plain('.decode_formats%s' % suffix),
      '#encode_format':: { 'function': { help: |||
        The regular expression template used for encoding values.
        Only applicable to FPE transformations.
      ||| } },
      encode_format(suffix=''):: refSelf.plain('.encode_format%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the template.
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
      '#pattern':: { 'function': { help: |||
        The pattern used for matching. Currently, only regular expression pattern is supported.
      ||| } },
      pattern(suffix=''):: refSelf.plain('.pattern%s' % suffix),
      '#type':: { 'function': { help: |||
        The pattern type to use for match detection. Currently, only regex is supported.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
