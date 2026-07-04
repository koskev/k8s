{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_okta_auth_backend+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { providers: value } },
      },
    },
    '#alias_metadata':: { 'function': { help: |||
      The metadata to be tied to generated entity alias.
        This should be a list or map containing the metadata in key value pairs.
    ||| } },
    withAliasMetadata(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { alias_metadata: value } },
      },
    },
    '#api_token':: { 'function': { help: |||
      The Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled.
    ||| } },
    withApiToken(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token: value } },
      },
    },
    '#api_token_wo':: { 'function': { help: |||
      Write-only Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled.
    ||| } },
    withApiTokenWo(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token_wo: value } },
      },
    },
    '#api_token_wo_version':: { 'function': { help: |||
      Version counter for write-only api_token.
    ||| } },
    withApiTokenWoVersion(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { api_token_wo_version: value } },
      },
    },
    '#base_url':: { 'function': { help: |||
      The Okta url. Examples: oktapreview.com, okta.com (default)
    ||| } },
    withBaseUrl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { base_url: value } },
      },
    },
    '#bypass_okta_mfa':: { 'function': { help: |||
      When true, requests by Okta for a MFA check will be bypassed. This also disallows certain status checks on the account, such as whether the password is expired.
    ||| } },
    withBypassOktaMfa(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { bypass_okta_mfa: value } },
      },
    },
    '#description':: { 'function': { help: |||
      The description of the auth backend
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#disable_remount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates.
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withGroup(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { group: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#org_name':: { 'function': { help: |||
      The Okta organization. This will be the first part of the url https://XXX.okta.com.
    ||| } },
    withOrgName(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { org_name: value } },
      },
    },
    '#organization':: { 'function': { help: |||
      The Okta organization. This will be the first part of the url https://XXX.okta.com. Use org_name instead.
    ||| } },
    withOrganization(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { organization: value } },
      },
    },
    '#path':: { 'function': { help: |||
      path to mount the backend
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#token':: { 'function': { help: |||
      The Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled. Use api_token instead.
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token: value } },
      },
    },
    '#token_bound_cidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#token_explicit_max_ttl':: { 'function': { help: |||
      Generated Token's Explicit Maximum TTL in seconds
    ||| } },
    withTokenExplicitMaxTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
      },
    },
    '#token_max_ttl':: { 'function': { help: |||
      The maximum lifetime of the generated token
    ||| } },
    withTokenMaxTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
      },
    },
    '#token_no_default_policy':: { 'function': { help: |||
      If true, the 'default' policy will not automatically be added to generated tokens
    ||| } },
    withTokenNoDefaultPolicy(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
      },
    },
    '#token_num_uses':: { 'function': { help: |||
      The maximum number of times a token may be used, a value of zero means unlimited
    ||| } },
    withTokenNumUses(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_num_uses: value } },
      },
    },
    '#token_period':: { 'function': { help: |||
      Generated Token's Period
    ||| } },
    withTokenPeriod(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_period: value } },
      },
    },
    '#token_policies':: { 'function': { help: |||
      Generated Token's Policies
    ||| } },
    withTokenPolicies(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_policies: value } },
      },
    },
    '#token_ttl':: { 'function': { help: |||
      The initial ttl of the token to generate in seconds
    ||| } },
    withTokenTtl(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_ttl: value } },
      },
    },
    '#token_type':: { 'function': { help: |||
      The type of token to generate, service or batch
    ||| } },
    withTokenType(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { token_type: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withUser(value):: self {
      resource+: {
        vault_okta_auth_backend+: { [terraformName]+: { user: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_okta_auth_backend.%s%s }' % [terraformName, suffix],
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
      '#api_token':: { 'function': { help: |||
        The Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled.
      ||| } },
      api_token(suffix=''):: refSelf.plain('.api_token%s' % suffix),
      '#api_token_wo':: { 'function': { help: |||
        Write-only Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled.
      ||| } },
      api_token_wo(suffix=''):: refSelf.plain('.api_token_wo%s' % suffix),
      '#api_token_wo_version':: { 'function': { help: |||
        Version counter for write-only api_token.
      ||| } },
      api_token_wo_version(suffix=''):: refSelf.plain('.api_token_wo_version%s' % suffix),
      '#base_url':: { 'function': { help: |||
        The Okta url. Examples: oktapreview.com, okta.com (default)
      ||| } },
      base_url(suffix=''):: refSelf.plain('.base_url%s' % suffix),
      '#bypass_okta_mfa':: { 'function': { help: |||
        When true, requests by Okta for a MFA check will be bypassed. This also disallows certain status checks on the account, such as whether the password is expired.
      ||| } },
      bypass_okta_mfa(suffix=''):: refSelf.plain('.bypass_okta_mfa%s' % suffix),
      '#description':: { 'function': { help: |||
        The description of the auth backend
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates.
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      group(suffix=''):: refSelf.plain('.group%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#org_name':: { 'function': { help: |||
        The Okta organization. This will be the first part of the url https://XXX.okta.com.
      ||| } },
      org_name(suffix=''):: refSelf.plain('.org_name%s' % suffix),
      '#organization':: { 'function': { help: |||
        The Okta organization. This will be the first part of the url https://XXX.okta.com. Use org_name instead.
      ||| } },
      organization(suffix=''):: refSelf.plain('.organization%s' % suffix),
      '#path':: { 'function': { help: |||
        path to mount the backend
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#token':: { 'function': { help: |||
        The Okta API token. This is required to query Okta for user group membership. If this is not supplied only locally configured groups will be enabled. Use api_token instead.
      ||| } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
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
      user(suffix=''):: refSelf.plain('.user%s' % suffix),
    },
  },
}
