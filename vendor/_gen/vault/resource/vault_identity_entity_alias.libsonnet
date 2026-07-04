{
  local outerSelf = self,
  new(terraformName, canonical_id, mount_accessor, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_entity_alias+: {
        [terraformName]+: {
          canonical_id: canonical_id,
          mount_accessor: mount_accessor,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_entity_alias.%s%s }' % [terraformName, suffix],
    fields:: {
      '#canonical_id':: { 'function': { help: |||
        ID of the entity to which this is an alias.
      ||| } },
      canonical_id(suffix=''):: refSelf.plain('.canonical_id%s' % suffix),
      '#custom_metadata':: { 'function': { help: |||
        Custom metadata to be associated with this alias.
      ||| } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount_accessor':: { 'function': { help: |||
        Mount accessor to which this alias belongs toMount accessor to which this alias belongs to.
      ||| } },
      mount_accessor(suffix=''):: refSelf.plain('.mount_accessor%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the entity alias.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
