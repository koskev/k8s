{
  new(terraformName, role, type):: {
    _type:: 'tf',
    resource+: {
      vault_gcp_auth_backend_role+: { [terraformName]+: {
        role: role,
        type: type,
      } },
    },
    withAllowGceInference(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { allow_gce_inference: value } },
      },
    },
    withBoundInstanceGroups(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_instance_groups: value } },
      },
    },
    withBoundRegions(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_regions: value } },
      },
    },
    withBoundProjects(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_projects: value } },
      },
    },
    withMaxJwtExp(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { max_jwt_exp: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withRole(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { role: value } },
      },
    },
    withBoundZones(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_zones: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withAddGroupAliases(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { add_group_aliases: value } },
      },
    },
    withRoleId(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { role_id: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withBoundServiceAccounts(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_service_accounts: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { type: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withBoundLabels(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_labels: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
}
