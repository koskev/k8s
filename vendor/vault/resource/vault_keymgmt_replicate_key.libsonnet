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
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { namespace: value } },
      },
    },
    withKeyName(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { key_name: value } },
      },
    },
    withKmsName(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { kms_name: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_replicate_key+: { [terraformName]+: { mount: value } },
      },
    },
  },
}
