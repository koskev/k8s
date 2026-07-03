{
  new(terraformName, canonical_id, mount_accessor, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_entity_alias+: { [terraformName]+: {
        canonical_id: canonical_id,
        mount_accessor: mount_accessor,
        name: name,
      } },
    },
    withCustomMetadata(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { custom_metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { id: value } },
      },
    },
    withCanonicalId(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { canonical_id: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
