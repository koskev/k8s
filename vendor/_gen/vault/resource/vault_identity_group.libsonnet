{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_group+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withExternalMemberEntityIds':: { 'function': { help: |||
      Manage member entities externally through `vault_identity_group_member_entity_ids` 
    ||| } },
    withExternalMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_member_entity_ids: value } },
      },
    },
    '#withExternalMemberGroupIds':: { 'function': { help: |||
      Manage member groups externally through `vault_identity_group_member_group_ids` 
    ||| } },
    withExternalMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_member_group_ids: value } },
      },
    },
    '#withExternalPolicies':: { 'function': { help: |||
      Manage policies externally through `vault_identity_group_policies`, allows using group ID in assigned policies. 
    ||| } },
    withExternalPolicies(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { external_policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { id: value } },
      },
    },
    '#withMemberEntityIds':: { 'function': { help: |||
      Entity IDs to be assigned as group members. 
    ||| } },
    withMemberEntityIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { member_entity_ids: value } },
      },
    },
    '#withMemberGroupIds':: { 'function': { help: |||
      Group IDs to be assigned as group members. 
    ||| } },
    withMemberGroupIds(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { member_group_ids: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      Metadata to be associated with the group. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the group. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicies':: { 'function': { help: |||
      Policies to be tied to the group. 
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { policies: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of the group, internal or external. Defaults to internal. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_identity_group+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_group.%s%s }' % [terraformName, suffix],
    fields:: {
      '#external_member_entity_ids':: { 'function': { help: |||
        Manage member entities externally through `vault_identity_group_member_entity_ids` 
      ||| } },
      external_member_entity_ids(suffix=''):: refSelf.plain('.external_member_entity_ids%s' % suffix),
      '#external_member_group_ids':: { 'function': { help: |||
        Manage member groups externally through `vault_identity_group_member_group_ids` 
      ||| } },
      external_member_group_ids(suffix=''):: refSelf.plain('.external_member_group_ids%s' % suffix),
      '#external_policies':: { 'function': { help: |||
        Manage policies externally through `vault_identity_group_policies`, allows using group ID in assigned policies. 
      ||| } },
      external_policies(suffix=''):: refSelf.plain('.external_policies%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#member_entity_ids':: { 'function': { help: |||
        Entity IDs to be assigned as group members. 
      ||| } },
      member_entity_ids(suffix=''):: refSelf.plain('.member_entity_ids%s' % suffix),
      '#member_group_ids':: { 'function': { help: |||
        Group IDs to be assigned as group members. 
      ||| } },
      member_group_ids(suffix=''):: refSelf.plain('.member_group_ids%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata to be associated with the group. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the group. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies to be tied to the group. 
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of the group, internal or external. Defaults to internal. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
