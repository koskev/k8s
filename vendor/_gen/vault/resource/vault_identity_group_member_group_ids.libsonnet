{
  local outerSelf = self,
  new(terraformName, group_id):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: {
        group_id: group_id,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { [name]: value } },
    } },
    '#withExclusive':: { 'function': {
      help:
        |||
          If set to true, allows the resource to manage member group ids
          exclusively. Beware of race conditions when disabling exclusive management
        |||,
    } },
    withExclusive(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { exclusive: value } },
    } },
    '#withGroupId':: { 'function': {
      help:
        |||
          ID of the group.
        |||,
    } },
    withGroupId(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { group_id: value } },
    } },
    withId(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { id: value } },
    } },
    '#withMemberGroupIds':: { 'function': {
      help:
        |||
          Group IDs to be assigned as group members.
        |||,
    } },
    withMemberGroupIds(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { member_group_ids: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_identity_group_member_group_ids+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_group_member_group_ids.%s%s }' % [terraformName, suffix],
    fields:: {
      '#exclusive':: { 'function': {
        help:
          |||
            If set to true, allows the resource to manage member group ids
            exclusively. Beware of race conditions when disabling exclusive management
          |||,
      } },
      exclusive(suffix=''):: refSelf.plain('.exclusive%s' % suffix),
      '#group_id':: { 'function': {
        help:
          |||
            ID of the group.
          |||,
      } },
      group_id(suffix=''):: refSelf.plain('.group_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#member_group_ids':: { 'function': {
        help:
          |||
            Group IDs to be assigned as group members.
          |||,
      } },
      member_group_ids(suffix=''):: refSelf.plain('.member_group_ids%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),

    },

  },

}
