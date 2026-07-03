{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend+: { [terraformName]+: {
      } },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withOrgName(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { org_name: value } },
      },
    },
    withApiToken(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { organization: value } },
      },
    },
    withBaseUrl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { base_url: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withApiTokenWoVersion(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token_wo_version: value } },
      },
    },
    withToken(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withBypassOktaMfa(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { bypass_okta_mfa: value } },
      },
    },
    withApiTokenWo(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token_wo: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withUser(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { user: value } },
      },
    },
    withGroup(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { group: value } },
      },
    },
  },
}
