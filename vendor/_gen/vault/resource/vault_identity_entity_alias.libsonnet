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
    '#withCanonicalId':: { 'function': { help: |||
      ID of the entity to which this is an alias. 
    ||| } },
    withCanonicalId(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { canonical_id: value } },
      },
    },
    '#withCustomMetadata':: { 'function': { help: |||
      Custom metadata to be associated with this alias. 
    ||| } },
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
    '#withMountAccessor':: { 'function': { help: |||
      Mount accessor to which this alias belongs toMount accessor to which this alias belongs to. 
    ||| } },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the entity alias. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_entity_alias+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
