{
  local outerSelf = self,
  new(terraformName, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_role_secret_id+: {
        [terraformName]+: {
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      Unique name of the auth backend to configure.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { backend: value } },
      },
    },
    '#cidr_list':: { 'function': { help: |||
      List of CIDR blocks that can log in using the SecretID.
    ||| } },
    withCidrList(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { cidr_list: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { id: value } },
      },
    },
    '#metadata':: { 'function': { help: |||
      JSON-encoded secret data to write.
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { metadata: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { namespace: value } },
      },
    },
    '#num_uses':: { 'function': { help: |||
      The number of uses for the secret-id.
    ||| } },
    withNumUses(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { num_uses: value } },
      },
    },
    '#role_name':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { role_name: value } },
      },
    },
    '#secret_id':: { 'function': { help: |||
      The SecretID to be managed. If not specified, Vault auto-generates one.
    ||| } },
    withSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { secret_id: value } },
      },
    },
    '#token_bound_cidrs':: { 'function': { help: |||
      Specifies the blocks of IP addresses which are allowed to use the generated token.
    ||| } },
    withTokenBoundCidrs(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { token_bound_cidrs: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      The TTL duration of the SecretID.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { ttl: value } },
      },
    },
    '#with_wrapped_accessor':: { 'function': { help: |||
      Use the wrapped secret-id accessor as the id of this resource. If false, a fresh secret-id will be regenerated whenever the wrapping token is expired or invalidated through unwrapping.
    ||| } },
    withWithWrappedAccessor(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { with_wrapped_accessor: value } },
      },
    },
    '#wrapping_ttl':: { 'function': { help: |||
      The TTL duration of the wrapped SecretID.
    ||| } },
    withWrappingTtl(value):: self {
      resource+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { wrapping_ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_approle_auth_backend_role_secret_id.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The unique ID used to access this SecretID.
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#cidr_list':: { 'function': { help: |||
        List of CIDR blocks that can log in using the SecretID.
      ||| } },
      cidr_list(suffix=''):: refSelf.plain('.cidr_list%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        JSON-encoded secret data to write.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#num_uses':: { 'function': { help: |||
        The number of uses for the secret-id.
      ||| } },
      num_uses(suffix=''):: refSelf.plain('.num_uses%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#secret_id':: { 'function': { help: |||
        The SecretID to be managed. If not specified, Vault auto-generates one.
      ||| } },
      secret_id(suffix=''):: refSelf.plain('.secret_id%s' % suffix),
      '#token_bound_cidrs':: { 'function': { help: |||
        Specifies the blocks of IP addresses which are allowed to use the generated token.
      ||| } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#ttl':: { 'function': { help: |||
        The TTL duration of the SecretID.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#with_wrapped_accessor':: { 'function': { help: |||
        Use the wrapped secret-id accessor as the id of this resource. If false, a fresh secret-id will be regenerated whenever the wrapping token is expired or invalidated through unwrapping.
      ||| } },
      with_wrapped_accessor(suffix=''):: refSelf.plain('.with_wrapped_accessor%s' % suffix),
      '#wrapping_accessor':: { 'function': { help: |||
        The wrapped SecretID accessor.
      ||| } },
      wrapping_accessor(suffix=''):: refSelf.plain('.wrapping_accessor%s' % suffix),
      '#wrapping_token':: { 'function': { help: |||
        The wrapped SecretID token.
      ||| } },
      wrapping_token(suffix=''):: refSelf.plain('.wrapping_token%s' % suffix),
      '#wrapping_ttl':: { 'function': { help: |||
        The TTL duration of the wrapped SecretID.
      ||| } },
      wrapping_ttl(suffix=''):: refSelf.plain('.wrapping_ttl%s' % suffix),
    },
  },
}
