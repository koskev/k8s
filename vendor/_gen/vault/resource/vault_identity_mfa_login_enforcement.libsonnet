{
  new(terraformName, mfa_method_ids, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_login_enforcement+: {
        [terraformName]+: {
          mfa_method_ids: mfa_method_ids,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAuthMethodAccessors':: { 'function': { help: |||
      Set of auth method accessor IDs. 
    ||| } },
    withAuthMethodAccessors(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { auth_method_accessors: value } },
      },
    },
    '#withAuthMethodTypes':: { 'function': { help: |||
      Set of auth method types. 
    ||| } },
    withAuthMethodTypes(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { auth_method_types: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityEntityIds':: { 'function': { help: |||
      Set of identity entity IDs. 
    ||| } },
    withIdentityEntityIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { identity_entity_ids: value } },
      },
    },
    '#withIdentityGroupIds':: { 'function': { help: |||
      Set of identity group IDs. 
    ||| } },
    withIdentityGroupIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { identity_group_ids: value } },
      },
    },
    '#withMfaMethodIds':: { 'function': { help: |||
      Set of MFA method UUIDs. 
    ||| } },
    withMfaMethodIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { mfa_method_ids: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Login enforcement name. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_mfa_login_enforcement.%s%s }' % [terraformName, suffix],
    fields:: {
      '#auth_method_accessors':: { 'function': { help: |||
        Set of auth method accessor IDs. 
      ||| } },
      auth_method_accessors(suffix=''):: refSelf.plain('.auth_method_accessors%s' % suffix),
      '#auth_method_types':: { 'function': { help: |||
        Set of auth method types. 
      ||| } },
      auth_method_types(suffix=''):: refSelf.plain('.auth_method_types%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_entity_ids':: { 'function': { help: |||
        Set of identity entity IDs. 
      ||| } },
      identity_entity_ids(suffix=''):: refSelf.plain('.identity_entity_ids%s' % suffix),
      '#identity_group_ids':: { 'function': { help: |||
        Set of identity group IDs. 
      ||| } },
      identity_group_ids(suffix=''):: refSelf.plain('.identity_group_ids%s' % suffix),
      '#mfa_method_ids':: { 'function': { help: |||
        Set of MFA method UUIDs. 
      ||| } },
      mfa_method_ids(suffix=''):: refSelf.plain('.mfa_method_ids%s' % suffix),
      '#name':: { 'function': { help: |||
        Login enforcement name. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#namespace_id':: { 'function': { help: |||
        Method's namespace ID. 
      ||| } },
      namespace_id(suffix=''):: refSelf.plain('.namespace_id%s' % suffix),
      '#namespace_path':: { 'function': { help: |||
        Method's namespace path. 
      ||| } },
      namespace_path(suffix=''):: refSelf.plain('.namespace_path%s' % suffix),
      '#uuid':: { 'function': { help: |||
        Resource UUID. 
      ||| } },
      uuid(suffix=''):: refSelf.plain('.uuid%s' % suffix),
    },
  },
}
