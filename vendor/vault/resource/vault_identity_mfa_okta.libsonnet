{
  new(terraformName, org_name, api_token):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_okta+: { [terraformName]+: {
        org_name: org_name,
        api_token: api_token,
      } },
    },
    withBaseUrl(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { base_url: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withPrimaryEmail(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { primary_email: value } },
      },
    },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { method_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { type: value } },
      },
    },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { uuid: value } },
      },
    },
    withUsernameFormat(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { username_format: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { id: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { namespace_path: value } },
      },
    },
    withOrgName(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { org_name: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { name: value } },
      },
    },
    withApiToken(value):: self {
      resource+: {
        vault_identity_mfa_okta+: { [terraformName]+: { api_token: value } },
      },
    },
  },
}
