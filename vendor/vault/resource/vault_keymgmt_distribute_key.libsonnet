{
  new(terraformName, kms_name, key_name, mount, purpose):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_distribute_key+: { [terraformName]+: {
        kms_name: kms_name,
        key_name: key_name,
        mount: mount,
        purpose: purpose,
      } },
    },
    withKmsName(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { kms_name: value } },
      },
    },
    withKeyName(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { key_name: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { mount: value } },
      },
    },
    withProtection(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { protection: value } },
      },
    },
    withPurpose(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { purpose: value } },
      },
    },
    withVersions(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { versions: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_distribute_key+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
