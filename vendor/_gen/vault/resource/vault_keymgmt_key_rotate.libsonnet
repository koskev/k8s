{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_key_rotate+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    '#withLatestVersion': { 'function': { help: |||
      Specifies the latest version of the key. 
    ||| } },
    withLatestVersion(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { latest_version: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Specifies the name of the key to rotate. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
