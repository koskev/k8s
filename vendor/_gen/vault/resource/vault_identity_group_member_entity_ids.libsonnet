{
  local outerSelf = self,
  new(terraformName, group_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_group_member_entity_ids+: {
        [terraformName]+: {
          group_id: group_id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { providers: value } },
      },
    },
    '#exclusive':: { 'function': { help: |||
      If set to true, allows the resource to manage member entity ids
      exclusively. Beware of race conditions when disabling exclusive management
    ||| } },
    withExclusive(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { exclusive: value } },
      },
    },
    '#group_id':: { 'function': { help: |||
      ID of the group.
    ||| } },
    withGroupId(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { group_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { id: value } },
      },
    },
    '#member_entity_ids':: { 'function': { help: |||
      Entity IDs to be assigned as group members.
    ||| } },
    withMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group_member_entity_ids+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_group_member_entity_ids.%s%s }' % [terraformName, suffix],
    fields:: {
      '#exclusive':: { 'function': { help: |||
        If set to true, allows the resource to manage member entity ids
        exclusively. Beware of race conditions when disabling exclusive management
      ||| } },
      exclusive(suffix=''):: refSelf.plain('.exclusive%s' % suffix),
      '#group_id':: { 'function': { help: |||
        ID of the group.
      ||| } },
      group_id(suffix=''):: refSelf.plain('.group_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#member_entity_ids':: { 'function': { help: |||
        Entity IDs to be assigned as group members.
      ||| } },
      member_entity_ids(suffix=''):: refSelf.plain('.member_entity_ids%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
