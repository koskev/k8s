{
  new(terraformName, mfa_method_ids, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_login_enforcement+: { [terraformName]+: {
        mfa_method_ids: mfa_method_ids,
        name: name,
      } },
    },
    '#withAuthMethodAccessors': { 'function': { help: |||
      Set of auth method accessor IDs. 
    ||| } },
    withAuthMethodAccessors(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { auth_method_accessors: value } },
      },
    },
    '#withAuthMethodTypes': { 'function': { help: |||
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
    '#withIdentityEntityIds': { 'function': { help: |||
      Set of identity entity IDs. 
    ||| } },
    withIdentityEntityIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { identity_entity_ids: value } },
      },
    },
    '#withIdentityGroupIds': { 'function': { help: |||
      Set of identity group IDs. 
    ||| } },
    withIdentityGroupIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { identity_group_ids: value } },
      },
    },
    '#withMfaMethodIds': { 'function': { help: |||
      Set of MFA method UUIDs. 
    ||| } },
    withMfaMethodIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { mfa_method_ids: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Login enforcement name. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNamespaceId': { 'function': { help: |||
      Method's namespace ID. 
    ||| } },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace_id: value } },
      },
    },
    '#withNamespacePath': { 'function': { help: |||
      Method's namespace path. 
    ||| } },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace_path: value } },
      },
    },
    '#withUuid': { 'function': { help: |||
      Resource UUID. 
    ||| } },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { uuid: value } },
      },
    },
  },
}
