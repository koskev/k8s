{
  new(terraformName, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_token_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withAllowedPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_policies: value } },
      },
    },
    withDisallowedPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { disallowed_policies: value } },
      },
    },
    withPathSuffix(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { path_suffix: value } },
      },
    },
    withRenewable(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { renewable: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withAllowedEntityAliases(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_entity_aliases: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withDisallowedPoliciesGlob(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { disallowed_policies_glob: value } },
      },
    },
    withAllowedPoliciesGlob(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_policies_glob: value } },
      },
    },
    withOrphan(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { orphan: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
  },
}
