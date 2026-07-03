{
  new(terraformName, user_claim, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_jwt_auth_backend_role+: { [terraformName]+: {
        user_claim: user_claim,
        role_name: role_name,
      } },
    },
    withMaxAge(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { max_age: value } },
      },
    },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    withTokenPeriod(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    withAliasMetadata(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    withVerboseOidcLogging(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { verbose_oidc_logging: value } },
      },
    },
    withTokenType(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    withDisableBoundClaimsParsing(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { disable_bound_claims_parsing: value } },
      },
    },
    withUserClaim(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { user_claim: value } },
      },
    },
    withOidcScopes(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { oidc_scopes: value } },
      },
    },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    withTokenNumUses(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    withBoundAudiences(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_audiences: value } },
      },
    },
    withUserClaimJsonPointer(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { user_claim_json_pointer: value } },
      },
    },
    withTokenTtl(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    withBoundSubject(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_subject: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withExpirationLeeway(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { expiration_leeway: value } },
      },
    },
    withGroupsClaim(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { groups_claim: value } },
      },
    },
    withNotBeforeLeeway(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { not_before_leeway: value } },
      },
    },
    withRoleType(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { role_type: value } },
      },
    },
    withTokenPolicies(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    withAllowedRedirectUris(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { allowed_redirect_uris: value } },
      },
    },
    withClaimMappings(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { claim_mappings: value } },
      },
    },
    withClockSkewLeeway(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { clock_skew_leeway: value } },
      },
    },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    withBoundClaims(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_claims: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withBoundClaimsType(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_claims_type: value } },
      },
    },
  },
}
