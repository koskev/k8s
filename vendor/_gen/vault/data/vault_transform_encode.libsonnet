{
  local outerSelf = self,
  new(terraformName, path, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_transform_encode+: {
        [terraformName]+: {
          path: path,
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBatchInput':: { 'function': { help: |||
      Specifies a list of items to be encoded in a single batch. If this parameter is set, the parameters 'value', 'transformation' and 'tweak' will be ignored. Each batch item within the list can specify these parameters instead.
    ||| } },
    withBatchInput(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { batch_input: value } },
      },
    },
    '#withBatchResults':: { 'function': { help: |||
      The result of encoding batch_input.
    ||| } },
    withBatchResults(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { batch_results: value } },
      },
    },
    '#withEncodedValue':: { 'function': { help: |||
      The result of encoding a value.
    ||| } },
    withEncodedValue(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { encoded_value: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path to backend from which to retrieve data.
    ||| } },
    withPath(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { path: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      The name of the role.
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTransformation':: { 'function': { help: |||
      The transformation to perform. If no value is provided and the role contains a single transformation, this value will be inferred from the role.
    ||| } },
    withTransformation(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { transformation: value } },
      },
    },
    '#withTweak':: { 'function': { help: |||
      The tweak value to use. Only applicable for FPE transformations
    ||| } },
    withTweak(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { tweak: value } },
      },
    },
    '#withValue':: { 'function': { help: |||
      The value in which to encode.
    ||| } },
    withValue(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { value: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_transform_encode.%s%s }' % [terraformName, suffix],
    fields:: {
      '#batch_input':: { 'function': { help: |||
        Specifies a list of items to be encoded in a single batch. If this parameter is set, the parameters 'value', 'transformation' and 'tweak' will be ignored. Each batch item within the list can specify these parameters instead.
      ||| } },
      batch_input(suffix=''):: refSelf.plain('.batch_input%s' % suffix),
      '#batch_results':: { 'function': { help: |||
        The result of encoding batch_input.
      ||| } },
      batch_results(suffix=''):: refSelf.plain('.batch_results%s' % suffix),
      '#encoded_value':: { 'function': { help: |||
        The result of encoding a value.
      ||| } },
      encoded_value(suffix=''):: refSelf.plain('.encoded_value%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Path to backend from which to retrieve data.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#role_name':: { 'function': { help: |||
        The name of the role.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#transformation':: { 'function': { help: |||
        The transformation to perform. If no value is provided and the role contains a single transformation, this value will be inferred from the role.
      ||| } },
      transformation(suffix=''):: refSelf.plain('.transformation%s' % suffix),
      '#tweak':: { 'function': { help: |||
        The tweak value to use. Only applicable for FPE transformations
      ||| } },
      tweak(suffix=''):: refSelf.plain('.tweak%s' % suffix),
      '#value':: { 'function': { help: |||
        The value in which to encode.
      ||| } },
      value(suffix=''):: refSelf.plain('.value%s' % suffix),
    },
  },
}
