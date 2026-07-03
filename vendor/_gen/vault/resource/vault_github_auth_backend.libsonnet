{
  new(terraformName, organization):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_github_auth_backend+: {
        [terraformName]+: {
          organization: organization,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAliasMetadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
       This should be a list or map containing the metadata in key value pairs. 
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBaseUrl':: { 'function': { help: |||
      The API endpoint to use. Useful if you are running GitHub Enterprise or an API-compatible authentication server. 
    ||| } },
    withBaseUrl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { base_url: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Specifies the description of the mount. This overrides the current stored value, if any. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOrganization':: { 'function': { help: |||
      The organization users must be part of. 
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { organization: value } },
      },
    },
    '#withOrganizationId':: { 'function': { help: |||
      The ID of the organization users must be part of. Vault will attempt to fetch and set this value if it is not provided (vault-1.10+) 
    ||| } },
    withOrganizationId(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { organization_id: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where the auth backend is mounted 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token 
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds 
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token 
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens 
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited 
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period 
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies 
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds 
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch 
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_github_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_github_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The mount accessor related to the auth mount. 
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#alias_metadata':: { 'function': { help: |||
        The metadata to be tied to generated entity alias.
         This should be a list or map containing the metadata in key value pairs. 
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#base_url':: { 'function': { help: |||
        The API endpoint to use. Useful if you are running GitHub Enterprise or an API-compatible authentication server. 
      ||| } },
      base_url(suffix=''):: refSelf.plain('.base_url%s' % suffix),
      '#description':: { 'function': { help: |||
        Specifies the description of the mount. This overrides the current stored value, if any. 
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates. 
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#organization':: { 'function': { help: |||
        The organization users must be part of. 
      ||| } },
      organization(suffix=''):: refSelf.plain('.organization%s' % suffix),
      '#organization_id':: { 'function': { help: |||
        The ID of the organization users must be part of. Vault will attempt to fetch and set this value if it is not provided (vault-1.10+) 
      ||| } },
      organization_id(suffix=''):: refSelf.plain('.organization_id%s' % suffix),
      '#path':: { 'function': { help: |||
        Path where the auth backend is mounted 
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
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
      tune(suffix=''):: refSelf.plain('.tune%s' % suffix),
    },
  },
}
