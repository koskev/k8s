{
  new(terraformName, name, mount):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_key_rotate+: { [terraformName]+: {
        name: name,
        mount: mount,
      } },
    },
    withLatestVersion(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { latest_version: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { name: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { mount: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_key_rotate+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
