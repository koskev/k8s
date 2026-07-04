{
  '#new':: { 'function': { help: |||
    Rotates a Key Management key
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_keymgmt_key_rotate+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the key to rotate.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_keymgmt_key_rotate.%s%s }' % [terraformName, suffix],
    fields:: {
      '#latest_version':: { 'function': { help: |||
        Specifies the latest version of the key.
      ||| } },
      latest_version(suffix=''):: refSelf.plain('.latest_version%s' % suffix),
      '#mount':: { 'function': { help: |||
        Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Specifies the name of the key to rotate.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
