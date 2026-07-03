{
  new(terraformName, role):: {
    _type:: 'tf',
    resource+: {
      vault_azure_auth_backend_role+: { [terraformName]+: {
        role: role,
      } },
    },
    withBoundGroupIds(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { bound_group_ids: value } },
      },
    },
    withBoundLocations(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { bound_locations: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withBoundScaleSets(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { bound_scale_sets: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withBoundSubscriptionIds(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { bound_subscription_ids: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withBoundServicePrincipalIds(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { bound_service_principal_ids: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withBoundResourceGroups(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { bound_resource_groups: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_azure_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
