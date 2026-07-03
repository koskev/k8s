{
  new(terraformName, role_name):: {
    _type:: 'tf',
    data+: {
      vault_gcp_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
      } },
    },
    withTokenTtl(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withType(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { type: value } },
      },
    },
    withAliasMetadata(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenNumUses(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withBoundInstanceGroups(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_instance_groups: value } },
      },
    },
    withBoundZones(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_zones: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenPeriod(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withBoundServiceAccounts(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_service_accounts: value } },
      },
    },
    withBoundLabels(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_labels: value } },
      },
    },
    withTokenType(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withBoundRegions(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_regions: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoleId(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { role_id: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withTokenPolicies(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withBoundProjects(value):: self {
      data+: {
        vault_gcp_auth_backend_role+: { [terraformName]+: { bound_projects: value } },
      },
    },
  },
}
