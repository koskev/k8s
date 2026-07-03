{
  new(terraformName, name, mfa_method_ids):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_login_enforcement+: { [terraformName]+: {
        name: name,
        mfa_method_ids: mfa_method_ids,
      } },
    },
    withIdentityEntityIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { identity_entity_ids: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace: value } },
      },
    },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { uuid: value } },
      },
    },
    withAuthMethodTypes(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { auth_method_types: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { name: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { id: value } },
      },
    },
    withAuthMethodAccessors(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { auth_method_accessors: value } },
      },
    },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { namespace_path: value } },
      },
    },
    withIdentityGroupIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { identity_group_ids: value } },
      },
    },
    withMfaMethodIds(value):: self {
      resource+: {
        vault_identity_mfa_login_enforcement+: { [terraformName]+: { mfa_method_ids: value } },
      },
    },
  },
}
