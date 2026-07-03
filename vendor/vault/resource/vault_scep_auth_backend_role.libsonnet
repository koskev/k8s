{
  new(terraformName, auth_type, name):: {
    _type:: 'tf',
    resource+: {
      vault_scep_auth_backend_role+: { [terraformName]+: {
        auth_type: auth_type,
        name: name,
      } },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withAuthType(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { auth_type: value } },
      },
    },
    withDisplayName(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { display_name: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withChallenge(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { challenge: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_scep_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
  },
}
