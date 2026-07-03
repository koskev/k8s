{
  new(terraformName, backend, enabled):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_config_acme+: {
        [terraformName]+: {
          backend: backend,
          enabled: enabled,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAllowRoleExtKeyUsage':: { 'function': { help: |||
      Specifies whether the ExtKeyUsage field from a role is used. 
    ||| } },
    withAllowRoleExtKeyUsage(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { allow_role_ext_key_usage: value } },
      },
    },
    '#withAllowedIssuers':: { 'function': { help: |||
      Specifies which issuers are allowed for use with ACME. 
    ||| } },
    withAllowedIssuers(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { allowed_issuers: value } },
      },
    },
    '#withAllowedRoles':: { 'function': { help: |||
      Specifies which roles are allowed for use with ACME. 
    ||| } },
    withAllowedRoles(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { allowed_roles: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Full path where PKI backend is mounted. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { backend: value } },
      },
    },
    '#withChallengeExcludedIpRanges':: { 'function': { help: |||
      Specifies the excluded IP ranges for ACME challenge workers to connect. 
    ||| } },
    withChallengeExcludedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { challenge_excluded_ip_ranges: value } },
      },
    },
    '#withChallengePermittedIpRanges':: { 'function': { help: |||
      Specifies the permitted IP ranges for ACME challenge workers to connect. 
    ||| } },
    withChallengePermittedIpRanges(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { challenge_permitted_ip_ranges: value } },
      },
    },
    '#withDefaultDirectoryPolicy':: { 'function': { help: |||
      Specifies the policy to be used for non-role-qualified ACME requests. 
    ||| } },
    withDefaultDirectoryPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { default_directory_policy: value } },
      },
    },
    '#withDnsResolver':: { 'function': { help: |||
      DNS resolver to use for domain resolution on this mount. Must be in the format <host>:<port>, with both parts mandatory. 
    ||| } },
    withDnsResolver(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { dns_resolver: value } },
      },
    },
    '#withEabPolicy':: { 'function': { help: |||
      Specifies the policy to use for external account binding behaviour. 
    ||| } },
    withEabPolicy(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { eab_policy: value } },
      },
    },
    '#withEnabled':: { 'function': { help: |||
      Specifies whether ACME is enabled. 
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { id: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      Specifies the maximum TTL in seconds for certificates issued by ACME. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_config_acme+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_config_acme.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allow_role_ext_key_usage':: { 'function': { help: |||
        Specifies whether the ExtKeyUsage field from a role is used. 
      ||| } },
      allow_role_ext_key_usage(suffix=''):: refSelf.plain('.allow_role_ext_key_usage%s' % suffix),
      '#allowed_issuers':: { 'function': { help: |||
        Specifies which issuers are allowed for use with ACME. 
      ||| } },
      allowed_issuers(suffix=''):: refSelf.plain('.allowed_issuers%s' % suffix),
      '#allowed_roles':: { 'function': { help: |||
        Specifies which roles are allowed for use with ACME. 
      ||| } },
      allowed_roles(suffix=''):: refSelf.plain('.allowed_roles%s' % suffix),
      '#backend':: { 'function': { help: |||
        Full path where PKI backend is mounted. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#challenge_excluded_ip_ranges':: { 'function': { help: |||
        Specifies the excluded IP ranges for ACME challenge workers to connect. 
      ||| } },
      challenge_excluded_ip_ranges(suffix=''):: refSelf.plain('.challenge_excluded_ip_ranges%s' % suffix),
      '#challenge_permitted_ip_ranges':: { 'function': { help: |||
        Specifies the permitted IP ranges for ACME challenge workers to connect. 
      ||| } },
      challenge_permitted_ip_ranges(suffix=''):: refSelf.plain('.challenge_permitted_ip_ranges%s' % suffix),
      '#default_directory_policy':: { 'function': { help: |||
        Specifies the policy to be used for non-role-qualified ACME requests. 
      ||| } },
      default_directory_policy(suffix=''):: refSelf.plain('.default_directory_policy%s' % suffix),
      '#dns_resolver':: { 'function': { help: |||
        DNS resolver to use for domain resolution on this mount. Must be in the format <host>:<port>, with both parts mandatory. 
      ||| } },
      dns_resolver(suffix=''):: refSelf.plain('.dns_resolver%s' % suffix),
      '#eab_policy':: { 'function': { help: |||
        Specifies the policy to use for external account binding behaviour. 
      ||| } },
      eab_policy(suffix=''):: refSelf.plain('.eab_policy%s' % suffix),
      '#enabled':: { 'function': { help: |||
        Specifies whether ACME is enabled. 
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        Specifies the maximum TTL in seconds for certificates issued by ACME. 
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
