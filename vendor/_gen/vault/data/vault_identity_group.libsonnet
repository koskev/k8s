{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_identity_group+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAliasId':: { 'function': { help: |||
      ID of the alias. 
    ||| } },
    withAliasId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_id: value } },
      },
    },
    '#withAliasMountAccessor':: { 'function': { help: |||
      Accessor of the mount to which the alias belongs to. This should be supplied in conjunction with `alias_name`. 
    ||| } },
    withAliasMountAccessor(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_mount_accessor: value } },
      },
    },
    '#withAliasName':: { 'function': { help: |||
      Name of the alias. This should be supplied in conjunction with `alias_mount_accessor`. 
    ||| } },
    withAliasName(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { alias_name: value } },
      },
    },
    '#withGroupId':: { 'function': { help: |||
      ID of the group. 
    ||| } },
    withGroupId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { group_id: value } },
      },
    },
    '#withGroupName':: { 'function': { help: |||
      Name of the group. 
    ||| } },
    withGroupName(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { group_name: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_group+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_identity_group.%s%s }' % [terraformName, suffix],
    fields:: {
      alias_canonical_id(suffix=''):: refSelf.plain('.alias_canonical_id%s' % suffix),
      alias_creation_time(suffix=''):: refSelf.plain('.alias_creation_time%s' % suffix),
      '#alias_id':: { 'function': { help: |||
        ID of the alias. 
      ||| } },
      alias_id(suffix=''):: refSelf.plain('.alias_id%s' % suffix),
      alias_last_update_time(suffix=''):: refSelf.plain('.alias_last_update_time%s' % suffix),
      alias_merged_from_canonical_ids(suffix=''):: refSelf.plain('.alias_merged_from_canonical_ids%s' % suffix),
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#alias_mount_accessor':: { 'function': { help: |||
        Accessor of the mount to which the alias belongs to. This should be supplied in conjunction with `alias_name`. 
      ||| } },
      alias_mount_accessor(suffix=''):: refSelf.plain('.alias_mount_accessor%s' % suffix),
      alias_mount_path(suffix=''):: refSelf.plain('.alias_mount_path%s' % suffix),
      alias_mount_type(suffix=''):: refSelf.plain('.alias_mount_type%s' % suffix),
      '#alias_name':: { 'function': { help: |||
        Name of the alias. This should be supplied in conjunction with `alias_mount_accessor`. 
      ||| } },
      alias_name(suffix=''):: refSelf.plain('.alias_name%s' % suffix),
      creation_time(suffix=''):: refSelf.plain('.creation_time%s' % suffix),
      '#data_json':: { 'function': { help: |||
        Group data from Vault in JSON String form 
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#group_id':: { 'function': { help: |||
        ID of the group. 
      ||| } },
      group_id(suffix=''):: refSelf.plain('.group_id%s' % suffix),
      '#group_name':: { 'function': { help: |||
        Name of the group. 
      ||| } },
      group_name(suffix=''):: refSelf.plain('.group_name%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      last_update_time(suffix=''):: refSelf.plain('.last_update_time%s' % suffix),
      member_entity_ids(suffix=''):: refSelf.plain('.member_entity_ids%s' % suffix),
      member_group_ids(suffix=''):: refSelf.plain('.member_group_ids%s' % suffix),
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      modify_index(suffix=''):: refSelf.plain('.modify_index%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      parent_group_ids(suffix=''):: refSelf.plain('.parent_group_ids%s' % suffix),
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
