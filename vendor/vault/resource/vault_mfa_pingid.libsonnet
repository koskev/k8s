{
  new(terraformName, mount_accessor, settings_file_base64, name):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_pingid+: { [terraformName]+: {
        mount_accessor: mount_accessor,
        settings_file_base64: settings_file_base64,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { id: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { type: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withOrgAlias(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { org_alias: value } },
      },
    },
    withSettingsFileBase64(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { settings_file_base64: value } },
      },
    },
    withAuthenticatorUrl(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { authenticator_url: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withUseSignature(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { use_signature: value } },
      },
    },
    withIdpUrl(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { idp_url: value } },
      },
    },
    withAdminUrl(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { admin_url: value } },
      },
    },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { username_format: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_pingid+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
