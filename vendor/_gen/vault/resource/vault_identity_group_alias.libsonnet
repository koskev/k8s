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
    '#withCanonicalId':: { 'function': { help: |||
      ID of the group to which this is an alias. 
    ||| } },
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
    '#withMountAccessor':: { 'function': { help: |||
      Mount accessor to which this alias belongs to. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the group alias. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_alias+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
