{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_identity_entity+: {
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
        vault_identity_entity+: { [terraformName]+: { alias_id: value } },
      },
    },
    '#withAliasMountAccessor':: { 'function': { help: |||
      Accessor of the mount to which the alias belongs to. This should be supplied in conjunction with `alias_name`. 
    ||| } },
    withAliasMountAccessor(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_mount_accessor: value } },
      },
    },
    '#withAliasName':: { 'function': { help: |||
      Name of the alias. This should be supplied in conjunction with `alias_mount_accessor`. 
    ||| } },
    withAliasName(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { alias_name: value } },
      },
    },
    '#withEntityId':: { 'function': { help: |||
      ID of the entity. 
    ||| } },
    withEntityId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { entity_id: value } },
      },
    },
    '#withEntityName':: { 'function': { help: |||
      Name of the entity. 
    ||| } },
    withEntityName(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { entity_name: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_entity+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_identity_entity.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_id':: { 'function': { help: |||
        ID of the alias. 
      ||| } },
      alias_id(suffix=''):: refSelf.plain('.alias_id%s' % suffix),
      '#alias_mount_accessor':: { 'function': { help: |||
        Accessor of the mount to which the alias belongs to. This should be supplied in conjunction with `alias_name`. 
      ||| } },
      alias_mount_accessor(suffix=''):: refSelf.plain('.alias_mount_accessor%s' % suffix),
      '#alias_name':: { 'function': { help: |||
        Name of the alias. This should be supplied in conjunction with `alias_mount_accessor`. 
      ||| } },
      alias_name(suffix=''):: refSelf.plain('.alias_name%s' % suffix),
      aliases(suffix=''):: refSelf.plain('.aliases%s' % suffix),
      creation_time(suffix=''):: refSelf.plain('.creation_time%s' % suffix),
      '#data_json':: { 'function': { help: |||
        Entity data from Vault in JSON String form 
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      direct_group_ids(suffix=''):: refSelf.plain('.direct_group_ids%s' % suffix),
      disabled(suffix=''):: refSelf.plain('.disabled%s' % suffix),
      '#entity_id':: { 'function': { help: |||
        ID of the entity. 
      ||| } },
      entity_id(suffix=''):: refSelf.plain('.entity_id%s' % suffix),
      '#entity_name':: { 'function': { help: |||
        Name of the entity. 
      ||| } },
      entity_name(suffix=''):: refSelf.plain('.entity_name%s' % suffix),
      group_ids(suffix=''):: refSelf.plain('.group_ids%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      inherited_group_ids(suffix=''):: refSelf.plain('.inherited_group_ids%s' % suffix),
      last_update_time(suffix=''):: refSelf.plain('.last_update_time%s' % suffix),
      merged_entity_ids(suffix=''):: refSelf.plain('.merged_entity_ids%s' % suffix),
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
    },
  },
}
