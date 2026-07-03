{
  new(terraformName, mount, key_collection, name):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_aws_kms+: { [terraformName]+: {
        mount: mount,
        key_collection: key_collection,
        name: name,
      } },
    },
    withCredentialsWo(value):: self {
      resource+: {
        vault_keymgmt_aws_kms+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_aws_kms+: { [terraformName]+: { mount: value } },
      },
    },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_keymgmt_aws_kms+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    withKeyCollection(value):: self {
      resource+: {
        vault_keymgmt_aws_kms+: { [terraformName]+: { key_collection: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_keymgmt_aws_kms+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_aws_kms+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
