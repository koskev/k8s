{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_keymgmt_key+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    withLatestVersion(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { latest_version: value } },
      },
    },
    withDeletionAllowed(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { deletion_allowed: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { mount: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { namespace: value } },
      },
    },
    withMinEnabledVersion(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { min_enabled_version: value } },
      },
    },
    withReplicaRegions(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { replica_regions: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_keymgmt_key+: { [terraformName]+: { type: value } },
      },
    },
  },
}
