{
  new(terraformName, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_spiffe_auth_backend_role+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withDisplayName(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { display_name: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withWorkloadIdPatterns(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { workload_id_patterns: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
  },
}
