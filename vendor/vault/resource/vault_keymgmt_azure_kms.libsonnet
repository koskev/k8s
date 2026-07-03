{
  new(terraformName, mount, name, key_collection):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_azure_kms+: { [terraformName]+: {
        mount: mount,
        name: name,
        key_collection: key_collection,
      } },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { mount: value } },
      },
    },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { namespace: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { name: value } },
      },
    },
    withCredentialsWo(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    withKeyCollection(value):: self {
      resource+: {
        vault_keymgmt_azure_kms+: { [terraformName]+: { key_collection: value } },
      },
    },
  },
}
