{
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_spiffe_auth_backend_role+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAliasMetadata':: { 'function': { help: |||
      A map of string to string that will be set as metadata on the identity alias
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withDisplayName':: { 'function': { help: |||
      A display name for the role. This is only used for display purposes in Vault, if not provided it will default to the role name.
    ||| } },
    withDisplayName(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { display_name: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the SPIFFE auth engine in Vault.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the SPIFFE auth role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
    '#withWorkloadIdPatterns':: { 'function': { help: |||
      A comma separated list of patterns that match an incoming workload id to this role.  A workload id is the part that remains after stripping the trust domain prefix and the slash separator from a spiffe id.
    ||| } },
    withWorkloadIdPatterns(value):: self {
      resource+: {
        vault_spiffe_auth_backend_role+: { [terraformName]+: { workload_id_patterns: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_spiffe_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': { help: |||
        A map of string to string that will be set as metadata on the identity alias
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#display_name':: { 'function': { help: |||
        A display name for the role. This is only used for display purposes in Vault, if not provided it will default to the role name.
      ||| } },
      display_name(suffix=''):: refSelf.plain('.display_name%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the SPIFFE auth engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the SPIFFE auth role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
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
      '#workload_id_patterns':: { 'function': { help: |||
        A comma separated list of patterns that match an incoming workload id to this role.  A workload id is the part that remains after stripping the trust domain prefix and the slash separator from a spiffe id.
      ||| } },
      workload_id_patterns(suffix=''):: refSelf.plain('.workload_id_patterns%s' % suffix),
    },
  },
}
