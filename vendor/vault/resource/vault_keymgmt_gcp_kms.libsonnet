{
  new(terraformName, mount, name, key_collection):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_gcp_kms+: { [terraformName]+: {
        mount: mount,
        name: name,
        key_collection: key_collection,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { namespace: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { mount: value } },
      },
    },
    withCredentialsWoVersion(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { credentials_wo_version: value } },
      },
    },
    withCredentialsWo(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { credentials_wo: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { name: value } },
      },
    },
    withKeyCollection(value):: self {
      resource+: {
        vault_keymgmt_gcp_kms+: { [terraformName]+: { key_collection: value } },
      },
    },
  },
}
