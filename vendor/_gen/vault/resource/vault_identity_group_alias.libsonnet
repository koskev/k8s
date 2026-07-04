{
  local outerSelf = self,
  new(terraformName, canonical_id, mount_accessor, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_group_alias+: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_group_alias.%s%s }' % [terraformName, suffix],
    fields:: {
      '#canonical_id':: { 'function': { help: |||
        ID of the group to which this is an alias.
      ||| } },
      canonical_id(suffix=''):: refSelf.plain('.canonical_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount_accessor':: { 'function': { help: |||
        Mount accessor to which this alias belongs to.
      ||| } },
      mount_accessor(suffix=''):: refSelf.plain('.mount_accessor%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the group alias.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
