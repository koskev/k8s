{
  local outerSelf = self,
  new(terraformName, options, type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_audit+: {
        [terraformName]+: {
          options: options,
          type: type,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the audit device.
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { id: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Specifies if the audit device is a local only. Local audit devices are not replicated nor (if a secondary) removed by replication.
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      Configuration options to pass to the audit device itself.
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { options: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path in which to enable the audit device.
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { path: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of the audit device, such as 'file'.
    ||| } },
    withType(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_audit.%s%s }' % [terraformName, suffix],
    fields:: {
      '#description':: { 'function': { help: |||
        Human-friendly description of the audit device.
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#local':: { 'function': { help: |||
        Specifies if the audit device is a local only. Local audit devices are not replicated nor (if a secondary) removed by replication.
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#options':: { 'function': { help: |||
        Configuration options to pass to the audit device itself.
      ||| } },
      options(suffix=''):: refSelf.plain('.options%s' % suffix),
      '#path':: { 'function': { help: |||
        Path in which to enable the audit device.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of the audit device, such as 'file'.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
