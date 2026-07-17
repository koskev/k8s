{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages a user for the Userpass auth method in Vault.
      |||,
  } },
  new(terraformName, mount, username):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: {
        mount: mount,
        username: username,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { [name]: value } },
    } },
    '#withAliasMetadata':: { 'function': {
      help:
        |||
          A map of string to string that will be set as metadata on the identity alias
        |||,
    } },
    withAliasMetadata(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { alias_metadata: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Mount path for the Userpass auth engine in Vault.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { namespace: value } },
    } },
    '#withPasswordHashWo':: { 'function': {
      help:
        |||
          Pre-hashed password for this user in bcrypt format. Available in Vault 1.17 and later. Mutually exclusive with password_wo.
        |||,
    } },
    withPasswordHashWo(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { password_hash_wo: value } },
    } },
    '#withPasswordHashWoVersion':: { 'function': {
      help:
        |||
          Version counter for the write-only `password_hash_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the password hash changes. Increment this value whenever you update `password_hash_wo` to ensure the new password hash is sent to Vault.
        |||,
    } },
    withPasswordHashWoVersion(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { password_hash_wo_version: value } },
    } },
    '#withPasswordWo':: { 'function': {
      help:
        |||
          Password for this user. This is a write-only field and will not be read back from Vault.
        |||,
    } },
    withPasswordWo(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { password_wo: value } },
    } },
    '#withPasswordWoVersion':: { 'function': {
      help:
        |||
          Version counter for the write-only `password_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the password changes. Increment this value whenever you update `password_wo` to ensure the new password is sent to Vault.
        |||,
    } },
    withPasswordWoVersion(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { password_wo_version: value } },
    } },
    '#withTokenBoundCidrs':: { 'function': {
      help:
        |||
          Specifies the blocks of IP addresses which are allowed to use the generated token
        |||,
    } },
    withTokenBoundCidrs(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_bound_cidrs: value } },
    } },
    '#withTokenExplicitMaxTtl':: { 'function': {
      help:
        |||
          Generated Token's Explicit Maximum TTL in seconds
        |||,
    } },
    withTokenExplicitMaxTtl(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_explicit_max_ttl: value } },
    } },
    '#withTokenMaxTtl':: { 'function': {
      help:
        |||
          The maximum lifetime of the generated token
        |||,
    } },
    withTokenMaxTtl(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_max_ttl: value } },
    } },
    '#withTokenNoDefaultPolicy':: { 'function': {
      help:
        |||
          If true, the 'default' policy will not automatically be added to generated tokens
        |||,
    } },
    withTokenNoDefaultPolicy(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_no_default_policy: value } },
    } },
    '#withTokenNumUses':: { 'function': {
      help:
        |||
          The maximum number of times a token may be used, a value of zero means unlimited
        |||,
    } },
    withTokenNumUses(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_num_uses: value } },
    } },
    '#withTokenPeriod':: { 'function': {
      help:
        |||
          Generated Token's Period
        |||,
    } },
    withTokenPeriod(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_period: value } },
    } },
    '#withTokenPolicies':: { 'function': {
      help:
        |||
          Generated Token's Policies
        |||,
    } },
    withTokenPolicies(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_policies: value } },
    } },
    '#withTokenTtl':: { 'function': {
      help:
        |||
          The initial ttl of the token to generate in seconds
        |||,
    } },
    withTokenTtl(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_ttl: value } },
    } },
    '#withTokenType':: { 'function': {
      help:
        |||
          The type of token to generate, service or batch
        |||,
    } },
    withTokenType(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { token_type: value } },
    } },
    '#withUsername':: { 'function': {
      help:
        |||
          Username for this Userpass user.
        |||,
    } },
    withUsername(value):: self { resource+: {
      vault_userpass_auth_backend_user+: { [terraformName]+: { username: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_userpass_auth_backend_user.%s%s }' % [terraformName, suffix],
    fields:: {
      '#alias_metadata':: { 'function': {
        help:
          |||
            A map of string to string that will be set as metadata on the identity alias
          |||,
      } },
      alias_metadata(suffix=''):: refSelf.plain('.alias_metadata%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Mount path for the Userpass auth engine in Vault.
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
      '#password_hash_wo':: { 'function': {
        help:
          |||
            Pre-hashed password for this user in bcrypt format. Available in Vault 1.17 and later. Mutually exclusive with password_wo.
          |||,
      } },
      password_hash_wo(suffix=''):: refSelf.plain('.password_hash_wo%s' % suffix),
      '#password_hash_wo_version':: { 'function': {
        help:
          |||
            Version counter for the write-only `password_hash_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the password hash changes. Increment this value whenever you update `password_hash_wo` to ensure the new password hash is sent to Vault.
          |||,
      } },
      password_hash_wo_version(suffix=''):: refSelf.plain('.password_hash_wo_version%s' % suffix),
      '#password_wo':: { 'function': {
        help:
          |||
            Password for this user. This is a write-only field and will not be read back from Vault.
          |||,
      } },
      password_wo(suffix=''):: refSelf.plain('.password_wo%s' % suffix),
      '#password_wo_version':: { 'function': {
        help:
          |||
            Version counter for the write-only `password_wo` field. Since write-only values are not stored in state, Terraform cannot detect when the password changes. Increment this value whenever you update `password_wo` to ensure the new password is sent to Vault.
          |||,
      } },
      password_wo_version(suffix=''):: refSelf.plain('.password_wo_version%s' % suffix),
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
      '#username':: { 'function': {
        help:
          |||
            Username for this Userpass user.
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),

    },

  },

}
