{
  new(terraformName, name, api_token, org_name, mount_accessor):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_okta+: { [terraformName]+: {
        name: name,
        api_token: api_token,
        org_name: org_name,
        mount_accessor: mount_accessor,
      } },
    },
    withBaseUrl(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { base_url: value } },
      },
    },
    withPrimaryEmail(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { primary_email: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { name: value } },
      },
    },
    withApiToken(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { api_token: value } },
      },
    },
    withUsernameFormat(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { username_format: value } },
      },
    },
    withOrgName(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { org_name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { namespace: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mfa_okta+: { [terraformName]+: { id: value } },
      },
    },
  },
}
