{
  '#new':: { 'function': { help: |||
    Manages a role for the CloudFoundry (CF) auth method in Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_cf_auth_backend_role+: {
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
        vault_cf_auth_backend_role+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#withBoundApplicationIds':: { 'function': { help: |||
      An optional set of application IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
    ||| } },
    withBoundApplicationIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_application_ids: value } },
      },
    },
    '#withBoundInstanceIds':: { 'function': { help: |||
      An optional set of instance IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
    ||| } },
    withBoundInstanceIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_instance_ids: value } },
      },
    },
    '#withBoundOrganizationIds':: { 'function': { help: |||
      An optional set of organization IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
    ||| } },
    withBoundOrganizationIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_organization_ids: value } },
      },
    },
    '#withBoundSpaceIds':: { 'function': { help: |||
      An optional set of space IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
    ||| } },
    withBoundSpaceIds(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { bound_space_ids: value } },
      },
    },
    '#withDisableIpMatching':: { 'function': { help: |||
      If set to `true`, disables the default behavior that logging in must be performed from an acceptable IP address described by the presented certificate. Defaults to `false`. To reset to the default, omit this field from config rather than setting it to `false`.
    ||| } },
    withDisableIpMatching(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { disable_ip_matching: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the CF auth engine in Vault.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the CF auth role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTokenBoundCidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#withTokenExplicitMaxTtl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#withTokenMaxTtl':: { 'function': { help: |||
      The maximum lifetime of the generated token
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#withTokenNoDefaultPolicy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#withTokenNumUses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#withTokenPeriod':: { 'function': { help: |||
      Generated Token's Period
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_period: value } },
      },
    },
    '#withTokenPolicies':: { 'function': { help: |||
      Generated Token's Policies
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#withTokenTtl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#withTokenType':: { 'function': { help: |||
      The type of token to generate, service or batch
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_cf_auth_backend_role+: { [terraformName]+: { token_type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_cf_auth_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': { help: |||
        A map of string to string that will be set as metadata on the identity alias
      ||| } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#bound_application_ids':: { 'function': { help: |||
        An optional set of application IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
      ||| } },
      bound_application_ids(suffix=''):: refSelf.plain('.bound_application_ids%s' % suffix),
      '#bound_instance_ids':: { 'function': { help: |||
        An optional set of instance IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
      ||| } },
      bound_instance_ids(suffix=''):: refSelf.plain('.bound_instance_ids%s' % suffix),
      '#bound_organization_ids':: { 'function': { help: |||
        An optional set of organization IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
      ||| } },
      bound_organization_ids(suffix=''):: refSelf.plain('.bound_organization_ids%s' % suffix),
      '#bound_space_ids':: { 'function': { help: |||
        An optional set of space IDs an instance must be a member of to qualify for this role. To clear this constraint, omit the field entirely rather than setting it to an empty list.
      ||| } },
      bound_space_ids(suffix=''):: refSelf.plain('.bound_space_ids%s' % suffix),
      '#disable_ip_matching':: { 'function': { help: |||
        If set to `true`, disables the default behavior that logging in must be performed from an acceptable IP address described by the presented certificate. Defaults to `false`. To reset to the default, omit this field from config rather than setting it to `false`.
      ||| } },
      disable_ip_matching(suffix=''):: refSelf.plain('.disable_ip_matching%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the CF auth engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the CF auth role.
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
    },
  },
}
