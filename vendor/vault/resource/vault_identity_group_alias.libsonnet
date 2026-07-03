{
  new(terraformName, canonical_id, mount_accessor, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_group_alias+: { [terraformName]+: {
        canonical_id: canonical_id,
        mount_accessor: mount_accessor,
        name: name,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { namespace: value } },
      },
    },
    withCanonicalId(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { canonical_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { id: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { name: value } },
      },
    },
  },
}
