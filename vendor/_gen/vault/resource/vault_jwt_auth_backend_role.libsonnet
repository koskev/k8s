{
  new(terraformName, role_name, user_claim):: {
    _type:: 'tf',
    resource+: {
      vault_jwt_auth_backend_role+: { [terraformName]+: {
        role_name: role_name,
        user_claim: user_claim,
      } },
    },
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withAllowedRedirectUris':: { 'function': { help: |||
      The list of allowed values for redirect_uri during OIDC logins. 
    ||| } },
    withAllowedRedirectUris(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { allowed_redirect_uris: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBoundAudiences':: { 'function': { help: |||
      List of aud claims to match against. Any match is sufficient. 
    ||| } },
    withBoundAudiences(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_audiences: value } },
      },
    },
    '#withBoundClaims':: { 'function': { help: |||
      Map of claims/values to match against. The expected value may be a single string or a comma-separated string list. 
    ||| } },
    withBoundClaims(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_claims: value } },
      },
    },
    '#withBoundClaimsType':: { 'function': { help: |||
      How to interpret values in the claims/values map: can be either "string" (exact match) or "glob" (wildcard match). 
    ||| } },
    withBoundClaimsType(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_claims_type: value } },
      },
    },
    '#withBoundSubject':: { 'function': { help: |||
      If set, requires that the sub claim matches this value. 
    ||| } },
    withBoundSubject(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { bound_subject: value } },
      },
    },
    '#withClaimMappings':: { 'function': { help: |||
      Map of claims (keys) to be copied to specified metadata fields (values). 
    ||| } },
    withClaimMappings(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { claim_mappings: value } },
      },
    },
    '#withClockSkewLeeway':: { 'function': { help: |||
      The amount of leeway to add to all claims to account for clock skew, in seconds. Defaults to 60 seconds if set to 0 and can be disabled if set to -1. Only applicable with 'jwt' roles. 
    ||| } },
    withClockSkewLeeway(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { clock_skew_leeway: value } },
      },
    },
    '#withDisableBoundClaimsParsing':: { 'function': { help: |||
      Disable bound claim value parsing. Useful when values contain commas. 
    ||| } },
    withDisableBoundClaimsParsing(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { disable_bound_claims_parsing: value } },
      },
    },
    '#withExpirationLeeway':: { 'function': { help: |||
      The amount of leeway to add to expiration (exp) claims to account for clock skew, in seconds. Defaults to 150 seconds if set to 0 and can be disabled if set to -1. Only applicable with 'jwt' roles. 
    ||| } },
    withExpirationLeeway(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { expiration_leeway: value } },
      },
    },
    '#withGroupsClaim':: { 'function': { help: |||
      The claim to use to uniquely identify the set of groups to which the user belongs; this will be used as the names for the Identity group aliases created due to a successful login. The claim value must be a list of strings. 
    ||| } },
    withGroupsClaim(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { groups_claim: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxAge':: { 'function': { help: |||
      Specifies the allowable elapsed time in seconds since the last time the user was actively authenticated. 
    ||| } },
    withMaxAge(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { max_age: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNotBeforeLeeway':: { 'function': { help: |||
      The amount of leeway to add to not before (nbf) claims to account for clock skew, in seconds. Defaults to 150 seconds if set to 0 and can be disabled if set to -1. Only applicable with 'jwt' roles.  
    ||| } },
    withNotBeforeLeeway(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { not_before_leeway: value } },
      },
    },
    '#withOidcScopes':: { 'function': { help: |||
      List of OIDC scopes to be used with an OIDC role. The standard scope "openid" is automatically included and need not be specified. 
    ||| } },
    withOidcScopes(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { oidc_scopes: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withRoleType':: { 'function': { help: |||
      Type of role, either "oidc" (default) or "jwt" 
    ||| } },
    withRoleType(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { role_type: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    '#withUserClaim':: { 'function': { help: |||
      The claim to use to uniquely identify the user; this will be used as the name for the Identity entity alias created due to a successful login. 
    ||| } },
    withUserClaim(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { user_claim: value } },
      },
    },
    '#withUserClaimJsonPointer':: { 'function': { help: |||
      Specifies if the user_claim value uses JSON pointer syntax for referencing claims. By default, the user_claim value will not use JSON pointer. 
    ||| } },
    withUserClaimJsonPointer(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { user_claim_json_pointer: value } },
      },
    },
    '#withVerboseOidcLogging':: { 'function': { help: |||
      Log received OIDC tokens and claims when debug-level logging is active. Not recommended in production since sensitive information may be present in OIDC responses. 
    ||| } },
    withVerboseOidcLogging(value):: self {
      resource+: {
        vault_jwt_auth_backend_role+: { [terraformName]+: { verbose_oidc_logging: value } },
      },
    },
  },
}
