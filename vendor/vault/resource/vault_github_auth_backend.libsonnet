{
  new(terraformName, organization):: {
    _type:: 'tf',
    resource+: {
      vault_github_auth_backend+: { [terraformName]+: {
        organization: organization,
      } },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withOrganization(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { organization: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withOrganizationId(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { organization_id: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    withBaseUrl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { base_url: value } },
      },
    },
  },
}
