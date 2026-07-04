{
  local outerSelf = self,
  new(terraformName, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_token_auth_backend_role+: {
        [terraformName]+: {
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { providers: value } },
      },
    },
    '#alias_metadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
        This should be a list or map containing the metadata in key value pairs.
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#allowed_entity_aliases':: { 'function': { help: |||
      Set of allowed entity aliases for this role.
    ||| } },
    withAllowedEntityAliases(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_entity_aliases: value } },
      },
    },
    '#allowed_policies':: { 'function': { help: |||
      List of allowed policies for given role.
    ||| } },
    withAllowedPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_policies: value } },
      },
    },
    '#allowed_policies_glob':: { 'function': { help: |||
      Set of allowed policies with glob match for given role.
    ||| } },
    withAllowedPoliciesGlob(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { allowed_policies_glob: value } },
      },
    },
    '#disallowed_policies':: { 'function': { help: |||
      List of disallowed policies for given role.
    ||| } },
    withDisallowedPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { disallowed_policies: value } },
      },
    },
    '#disallowed_policies_glob':: { 'function': { help: |||
      Set of disallowed policies with glob match for given role.
    ||| } },
    withDisallowedPoliciesGlob(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { disallowed_policies_glob: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#orphan':: { 'function': { help: |||
      If true, tokens created against this policy will be orphan tokens.
    ||| } },
    withOrphan(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { orphan: value } },
      },
    },
    '#path_suffix':: { 'function': { help: |||
      Tokens created against this role will have the given suffix as part of their path in addition to the role name.
    ||| } },
    withPathSuffix(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { path_suffix: value } },
      },
    },
    '#renewable':: { 'function': { help: |||
      Whether to disable the ability of the token to be renewed past its initial TTL.
    ||| } },
    withRenewable(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { renewable: value } },
      },
    },
    '#role_name':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { role_name: value } },
      },
    },
    '#token_bound_cidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#token_explicit_max_ttl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#token_max_ttl':: { 'function': { help: |||
      The maximum lifetime of the generated token
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#token_no_default_policy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#token_num_uses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#token_period':: { 'function': { help: |||
      Generated Token's Period
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#token_policies':: { 'function': { help: |||
      Generated Token's Policies
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#token_ttl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#token_type':: { 'function': { help: |||
      The type of token to generate, service or batch
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_token_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_token_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': { help: |||
        The metadata to be tied to generated entity alias.
          This should be a list or map containing the metadata in key value pairs.
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#allowed_entity_aliases':: { 'function': { help: |||
        Set of allowed entity aliases for this role.
      ||| } },
      allowed_entity_aliases(suffix=''):: refSelf.plain('.allowed_entity_aliases%s' % suffix),
      '#allowed_policies':: { 'function': { help: |||
        List of allowed policies for given role.
      ||| } },
      allowed_policies(suffix=''):: refSelf.plain('.allowed_policies%s' % suffix),
      '#allowed_policies_glob':: { 'function': { help: |||
        Set of allowed policies with glob match for given role.
      ||| } },
      allowed_policies_glob(suffix=''):: refSelf.plain('.allowed_policies_glob%s' % suffix),
      '#disallowed_policies':: { 'function': { help: |||
        List of disallowed policies for given role.
      ||| } },
      disallowed_policies(suffix=''):: refSelf.plain('.disallowed_policies%s' % suffix),
      '#disallowed_policies_glob':: { 'function': { help: |||
        Set of disallowed policies with glob match for given role.
      ||| } },
      disallowed_policies_glob(suffix=''):: refSelf.plain('.disallowed_policies_glob%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#orphan':: { 'function': { help: |||
        If true, tokens created against this policy will be orphan tokens.
      ||| } },
      orphan(suffix=''):: refSelf.plain('.orphan%s' % suffix),
      '#path_suffix':: { 'function': { help: |||
        Tokens created against this role will have the given suffix as part of their path in addition to the role name.
      ||| } },
      path_suffix(suffix=''):: refSelf.plain('.path_suffix%s' % suffix),
      '#renewable':: { 'function': { help: |||
        Whether to disable the ability of the token to be renewed past its initial TTL.
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#token_bound_cidrs':: { 'function': { help: |||
        Specifies the blocks of IP addresses which are allowed to use the generated token
      ||| } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#token_explicit_max_ttl':: { 'function': { help: |||
        Generated Token's Explicit Maximum TTL in seconds
      ||| } },
      token_explicit_max_ttl(suffix=''):: refSelf.plain('.token_explicit_max_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': { help: |||
        The maximum lifetime of the generated token
      ||| } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
      '#token_no_default_policy':: { 'function': { help: |||
        If true, the 'default' policy will not automatically be added to generated tokens
      ||| } },
      token_no_default_policy(suffix=''):: refSelf.plain('.token_no_default_policy%s' % suffix),
      '#token_num_uses':: { 'function': { help: |||
        The maximum number of times a token may be used, a value of zero means unlimited
      ||| } },
      token_num_uses(suffix=''):: refSelf.plain('.token_num_uses%s' % suffix),
      '#token_period':: { 'function': { help: |||
        Generated Token's Period
      ||| } },
      token_period(suffix=''):: refSelf.plain('.token_period%s' % suffix),
      '#token_policies':: { 'function': { help: |||
        Generated Token's Policies
      ||| } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#token_ttl':: { 'function': { help: |||
        The initial ttl of the token to generate in seconds
      ||| } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
      '#token_type':: { 'function': { help: |||
        The type of token to generate, service or batch
      ||| } },
      token_type(suffix=''):: refSelf.plain('.token_type%s' % suffix),
    },
  },
}
