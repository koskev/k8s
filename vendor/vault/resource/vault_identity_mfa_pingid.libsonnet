{
  new(terraformName, settings_file_base64):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_pingid+: { [terraformName]+: {
        settings_file_base64: settings_file_base64,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { id: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { type: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withOrgAlias(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { org_alias: value } },
      },
    },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { namespace_path: value } },
      },
    },
    withUseSignature(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { use_signature: value } },
      },
    },
    withAuthenticatorUrl(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { authenticator_url: value } },
      },
    },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { username_format: value } },
      },
    },
    withAdminUrl(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { admin_url: value } },
      },
    },
    withIdpUrl(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { idp_url: value } },
      },
    },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { method_id: value } },
      },
    },
    withSettingsFileBase64(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { settings_file_base64: value } },
      },
    },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_pingid+: { [terraformName]+: { uuid: value } },
      },
    },
  },
}
