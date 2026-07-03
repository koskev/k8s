{
  new(terraformName, key_name, kms_name, mount):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_replicate_key+: { [terraformName]+: {
        key_name: key_name,
        kms_name: kms_name,
        mount: mount,
      } },
    },
    '#withKeyName':: { 'function': { help: |||
      Specifies the name of the key to replicate. 
    ||| } },
    withKeyName(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { key_name: value } },
      },
    },
    '#withKmsName':: { 'function': { help: |||
      Specifies the name of the AWS KMS provider. 
    ||| } },
    withKmsName(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { kms_name: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Path of the Key Management secrets engine mount. Must match the `path` of a `vault_mount` resource with `type = "keymgmt"`. Use `vault_mount.keymgmt.path` here. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
