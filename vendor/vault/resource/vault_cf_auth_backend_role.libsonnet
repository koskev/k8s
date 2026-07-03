{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_cf_auth_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withDisableIpMatching(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { disable_ip_matching: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    withBoundSpaceIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_space_ids: value } },
      },
    },
    withBoundInstanceIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_instance_ids: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withBoundApplicationIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_application_ids: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withBoundOrganizationIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_organization_ids: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
  },
}
