{
  new(terraformName, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    withSecretIdTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { secret_id_ttl: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withRoleId(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { role_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withSecretIdNumUses(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { secret_id_num_uses: value } },
      },
    },
    withSecretIdBoundCidrs(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { secret_id_bound_cidrs: value } },
      },
    },
    withLocalSecretIds(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { local_secret_ids: value } },
      },
    },
    withBindSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_role+: { [terraformName]+: { bind_secret_id: value } },
      },
    },
  },
}
