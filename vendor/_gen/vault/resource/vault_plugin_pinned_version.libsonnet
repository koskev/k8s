{
  local outerSelf = self,
  new(terraformName, name, type, version):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_plugin_pinned_version+: {
        [terraformName]+: {
          name: name,
          type: type,
          version: version,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the plugin.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { name: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of plugin; one of "auth", "secret", or "database".
    ||| } },
    withType(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { type: value } },
      },
    },
    '#withVersion':: { 'function': { help: |||
      Semantic pinned plugin version.
    ||| } },
    withVersion(value):: self {
      resource+: {
        vault_plugin_pinned_version+: { [terraformName]+: { version: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_plugin_pinned_version.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the plugin.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of plugin; one of "auth", "secret", or "database".
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
      '#version':: { 'function': { help: |||
        Semantic pinned plugin version.
      ||| } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),
    },
  },
}
