{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages RADIUS auth backend configuration for an existing auth mount in Vault.
      |||,
  } },
  new(terraformName, host, mount, secret_wo, secret_wo_version):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_radius_auth_backend+: { [terraformName]+: {
        host: host,
        mount: mount,
        secret_wo: secret_wo,
        secret_wo_version: secret_wo_version,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { [name]: value } },
    } },
    '#withAliasMetadata':: { 'function': {
      help:
        |||
          A map of string to string that will be set as metadata on the identity alias
        |||,
    } },
    withAliasMetadata(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { alias_metadata: value } },
    } },
    '#withDialTimeout':: { 'function': {
      help:
        |||
          Number of seconds to wait for a backend connection before timing out. Defaults to `10`. If removed from configuration after being set, Vault retains the previously stored value.
        |||,
    } },
    withDialTimeout(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { dial_timeout: value } },
    } },
    '#withHost':: { 'function': {
      help:
        |||
          The RADIUS server to connect to. Examples: `radius.myorg.com`, `127.0.0.1`.
        |||,
    } },
    withHost(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { host: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path of the enabled RADIUS auth backend mount to configure.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withNasPort':: { 'function': {
      help:
        |||
          The NAS-Port attribute of the RADIUS request. Defaults to `10`. If removed from configuration after being set, Vault retains the previously stored value.
        |||,
    } },
    withNasPort(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { nas_port: value } },
    } },
    '#withPort':: { 'function': {
      help:
        |||
          The UDP port where the RADIUS server is listening on. Defaults to `1812`.
        |||,
    } },
    withPort(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { port: value } },
    } },
    '#withReadTimeout':: { 'function': {
      help:
        |||
          Number of seconds to wait for a response from the RADIUS server. Defaults to `10`. If removed from configuration after being set, Vault retains the previously stored value.
        |||,
    } },
    withReadTimeout(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { read_timeout: value } },
    } },
    '#withSecretWo':: { 'function': {
      help:
        |||
          The RADIUS shared secret. This is a write-only field and will not be read back from Vault.
        |||,
    } },
    withSecretWo(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { secret_wo: value } },
    } },
    '#withSecretWoVersion':: { 'function': {
      help:
        |||
          Version counter for the write-only `secret_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the secret changes. Increment this value whenever you update `secret_wo` so Terraform detects the change and applies an update.
        |||,
    } },
    withSecretWoVersion(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { secret_wo_version: value } },
    } },
    '#withTokenBoundCidrs':: { 'function': {
      help:
        |||
          Specifies the blocks of IP addresses which are allowed to use the generated token
        |||,
    } },
    withTokenBoundCidrs(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_bound_cidrs: value } },
    } },
    '#withTokenExplicitMaxTtl':: { 'function': {
      help:
        |||
          Generated Token's Explicit Maximum TTL in seconds
        |||,
    } },
    withTokenExplicitMaxTtl(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_explicit_max_ttl: value } },
    } },
    '#withTokenMaxTtl':: { 'function': {
      help:
        |||
          The maximum lifetime of the generated token
        |||,
    } },
    withTokenMaxTtl(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_max_ttl: value } },
    } },
    '#withTokenNoDefaultPolicy':: { 'function': {
      help:
        |||
          If true, the 'default' policy will not automatically be added to generated tokens
        |||,
    } },
    withTokenNoDefaultPolicy(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_no_default_policy: value } },
    } },
    '#withTokenNumUses':: { 'function': {
      help:
        |||
          The maximum number of times a token may be used, a value of zero means unlimited
        |||,
    } },
    withTokenNumUses(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_num_uses: value } },
    } },
    '#withTokenPeriod':: { 'function': {
      help:
        |||
          Generated Token's Period
        |||,
    } },
    withTokenPeriod(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_period: value } },
    } },
    '#withTokenPolicies':: { 'function': {
      help:
        |||
          Generated Token's Policies
        |||,
    } },
    withTokenPolicies(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_policies: value } },
    } },
    '#withTokenTtl':: { 'function': {
      help:
        |||
          The initial ttl of the token to generate in seconds
        |||,
    } },
    withTokenTtl(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_ttl: value } },
    } },
    '#withTokenType':: { 'function': {
      help:
        |||
          The type of token to generate, service or batch
        |||,
    } },
    withTokenType(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { token_type: value } },
    } },
    '#withUnregisteredUserPolicies':: { 'function': {
      help:
        |||
          A set of policies to be granted to unregistered users.
        |||,
    } },
    withUnregisteredUserPolicies(value):: self { resource+: {
      vault_radius_auth_backend+: { [terraformName]+: { unregistered_user_policies: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_radius_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': {
        help:
          |||
            A map of string to string that will be set as metadata on the identity alias
          |||,
      } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#dial_timeout':: { 'function': {
        help:
          |||
            Number of seconds to wait for a backend connection before timing out. Defaults to `10`. If removed from configuration after being set, Vault retains the previously stored value.
          |||,
      } },
      dial_timeout(suffix=''):: refSelf.plain('.dial_timeout%s' % suffix),
      '#host':: { 'function': {
        help:
          |||
            The RADIUS server to connect to. Examples: `radius.myorg.com`, `127.0.0.1`.
          |||,
      } },
      host(suffix=''):: refSelf.plain('.host%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Path of the enabled RADIUS auth backend mount to configure.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#nas_identifier':: { 'function': {
        help:
          |||
            The NAS-Identifier attribute of the RADIUS request. This is a read-only field returned by Vault.
          |||,
      } },
      nas_identifier(suffix=''):: refSelf.plain('.nas_identifier%s' % suffix),
      '#nas_port':: { 'function': {
        help:
          |||
            The NAS-Port attribute of the RADIUS request. Defaults to `10`. If removed from configuration after being set, Vault retains the previously stored value.
          |||,
      } },
      nas_port(suffix=''):: refSelf.plain('.nas_port%s' % suffix),
      '#port':: { 'function': {
        help:
          |||
            The UDP port where the RADIUS server is listening on. Defaults to `1812`.
          |||,
      } },
      port(suffix=''):: refSelf.plain('.port%s' % suffix),
      '#read_timeout':: { 'function': {
        help:
          |||
            Number of seconds to wait for a response from the RADIUS server. Defaults to `10`. If removed from configuration after being set, Vault retains the previously stored value.
          |||,
      } },
      read_timeout(suffix=''):: refSelf.plain('.read_timeout%s' % suffix),
      '#secret_wo':: { 'function': {
        help:
          |||
            The RADIUS shared secret. This is a write-only field and will not be read back from Vault.
          |||,
      } },
      secret_wo(suffix=''):: refSelf.plain('.secret_wo%s' % suffix),
      '#secret_wo_version':: { 'function': {
        help:
          |||
            Version counter for the write-only `secret_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the secret changes. Increment this value whenever you update `secret_wo` so Terraform detects the change and applies an update.
          |||,
      } },
      secret_wo_version(suffix=''):: refSelf.plain('.secret_wo_version%s' % suffix),
      '#token_bound_cidrs':: { 'function': {
        help:
          |||
            Specifies the blocks of IP addresses which are allowed to use the generated token
          |||,
      } },
      token_bound_cidrs(suffix=''):: refSelf.plain('.token_bound_cidrs%s' % suffix),
      '#token_explicit_max_ttl':: { 'function': {
        help:
          |||
            Generated Token's Explicit Maximum TTL in seconds
          |||,
      } },
      token_explicit_max_ttl(suffix=''):: refSelf.plain('.token_explicit_max_ttl%s' % suffix),
      '#token_max_ttl':: { 'function': {
        help:
          |||
            The maximum lifetime of the generated token
          |||,
      } },
      token_max_ttl(suffix=''):: refSelf.plain('.token_max_ttl%s' % suffix),
      '#token_no_default_policy':: { 'function': {
        help:
          |||
            If true, the 'default' policy will not automatically be added to generated tokens
          |||,
      } },
      token_no_default_policy(suffix=''):: refSelf.plain('.token_no_default_policy%s' % suffix),
      '#token_num_uses':: { 'function': {
        help:
          |||
            The maximum number of times a token may be used, a value of zero means unlimited
          |||,
      } },
      token_num_uses(suffix=''):: refSelf.plain('.token_num_uses%s' % suffix),
      '#token_period':: { 'function': {
        help:
          |||
            Generated Token's Period
          |||,
      } },
      token_period(suffix=''):: refSelf.plain('.token_period%s' % suffix),
      '#token_policies':: { 'function': {
        help:
          |||
            Generated Token's Policies
          |||,
      } },
      token_policies(suffix=''):: refSelf.plain('.token_policies%s' % suffix),
      '#token_ttl':: { 'function': {
        help:
          |||
            The initial ttl of the token to generate in seconds
          |||,
      } },
      token_ttl(suffix=''):: refSelf.plain('.token_ttl%s' % suffix),
      '#token_type':: { 'function': {
        help:
          |||
            The type of token to generate, service or batch
          |||,
      } },
      token_type(suffix=''):: refSelf.plain('.token_type%s' % suffix),
      '#unregistered_user_policies':: { 'function': {
        help:
          |||
            A set of policies to be granted to unregistered users.
          |||,
      } },
      unregistered_user_policies(suffix=''):: refSelf.plain('.unregistered_user_policies%s' % suffix),

    },

  },

}
