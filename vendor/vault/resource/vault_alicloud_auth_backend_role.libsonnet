{
  new(terraformName, arn, role):: {
    _type:: 'tf',
    resource+: {
      vault_alicloud_auth_backend_role+: { [terraformName]+: {
        arn: arn,
        role: role,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withArn(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { arn: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_alicloud_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
  },
}
