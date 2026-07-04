{
  local outerSelf = self,
  new(terraformName, binddn, bindpass):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_ad_secret_backend+: {
        [terraformName]+: {
          binddn: binddn,
          bindpass: bindpass,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { providers: value } },
      },
    },
    '#anonymous_group_search':: { 'function': { help: |||
      Use anonymous binds when performing LDAP group searches (if true the initial credentials will still be used for the initial connection test).
    ||| } },
    withAnonymousGroupSearch(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { anonymous_group_search: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The mount path for a backend, for example, the path given in "$ vault auth enable -path=my-ad ad".
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    '#binddn':: { 'function': { help: |||
      Distinguished name of object to bind when performing user and group search.
    ||| } },
    withBinddn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    '#bindpass':: { 'function': { help: |||
      LDAP password for searching for the user DN.
    ||| } },
    withBindpass(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    '#case_sensitive_names':: { 'function': { help: |||
      If true, case sensitivity will be used when comparing usernames and groups for matching policies.
    ||| } },
    withCaseSensitiveNames(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { case_sensitive_names: value } },
      },
    },
    '#certificate':: { 'function': { help: |||
      CA certificate to use when verifying LDAP server certificate, must be x509 PEM encoded.
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    '#client_tls_cert':: { 'function': { help: |||
      Client certificate to provide to the LDAP server, must be x509 PEM encoded.
    ||| } },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    '#client_tls_key':: { 'function': { help: |||
      Client certificate key to provide to the LDAP server, must be x509 PEM encoded.
    ||| } },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    '#default_lease_ttl_seconds':: { 'function': { help: |||
      Default lease duration for secrets in seconds
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#deny_null_bind':: { 'function': { help: |||
      Denies an unauthenticated LDAP bind request if the user's password is empty; defaults to true
    ||| } },
    withDenyNullBind(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { deny_null_bind: value } },
      },
    },
    '#description':: { 'function': { help: |||
      Human-friendly description of the mount for the backend.
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#disable_remount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates.
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#discoverdn':: { 'function': { help: |||
      Use anonymous bind to discover the bind DN of a user.
    ||| } },
    withDiscoverdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { discoverdn: value } },
      },
    },
    '#groupattr':: { 'function': { help: |||
      LDAP attribute to follow on objects returned by <groupfilter> in order to enumerate user group membership. Examples: "cn" or "memberOf", etc. Default: cn
    ||| } },
    withGroupattr(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupattr: value } },
      },
    },
    '#groupdn':: { 'function': { help: |||
      LDAP search base to use for group membership search (eg: ou=Groups,dc=example,dc=org)
    ||| } },
    withGroupdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupdn: value } },
      },
    },
    '#groupfilter':: { 'function': { help: |||
      Go template for querying group membership of user. The template can access the following context variables: UserDN, Username Example: (&(objectClass=group)(member:1.2.840.113556.1.4.1941:={{.UserDN}})) Default: (|(memberUid={{.Username}})(member={{.UserDN}})(uniqueMember={{.UserDN}}))
    ||| } },
    withGroupfilter(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupfilter: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#insecure_tls':: { 'function': { help: |||
      Skip LDAP server SSL Certificate verification - insecure and not recommended for production use.
    ||| } },
    withInsecureTls(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    '#last_rotation_tolerance':: { 'function': { help: |||
      The number of seconds after a Vault rotation where, if Active Directory shows a later rotation, it should be considered out-of-band.
    ||| } },
    withLastRotationTolerance(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { last_rotation_tolerance: value } },
      },
    },
    '#local':: { 'function': { help: |||
      Mark the secrets engine as local-only. Local engines are not replicated or removed by replication.Tolerance duration to use when checking the last rotation time.
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#max_lease_ttl_seconds':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds.
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#max_ttl':: { 'function': { help: |||
      In seconds, the maximum password time-to-live.
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#password_policy':: { 'function': { help: |||
      Name of the password policy to use to generate passwords.
    ||| } },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { password_policy: value } },
      },
    },
    '#request_timeout':: { 'function': { help: |||
      Timeout, in seconds, for the connection when making requests against the server before returning back an error.
    ||| } },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    '#starttls':: { 'function': { help: |||
      Issue a StartTLS command after establishing unencrypted connection.
    ||| } },
    withStarttls(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    '#tls_max_version':: { 'function': { help: |||
      Maximum TLS version to use. Accepted values are 'tls10', 'tls11', 'tls12' or 'tls13'. Defaults to 'tls12'
    ||| } },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    '#tls_min_version':: { 'function': { help: |||
      Minimum TLS version to use. Accepted values are 'tls10', 'tls11', 'tls12' or 'tls13'. Defaults to 'tls12'
    ||| } },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      In seconds, the default password time-to-live.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
    '#upndomain':: { 'function': { help: |||
      Enables userPrincipalDomain login with [username]@UPNDomain.
    ||| } },
    withUpndomain(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    '#url':: { 'function': { help: |||
      LDAP URL to connect to (default: ldap://127.0.0.1). Multiple URLs can be specified by concatenating them with commas; they will be tried in-order.
    ||| } },
    withUrl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { url: value } },
      },
    },
    '#use_pre111_group_cn_behavior':: { 'function': { help: |||
      In Vault 1.1.1 a fix for handling group CN values of different cases unfortunately introduced a regression that could cause previously defined groups to not be found due to a change in the resulting name. If set true, the pre-1.1.1 behavior for matching group CNs will be used. This is only needed in some upgrade scenarios for backwards compatibility. It is enabled by default if the config is upgraded but disabled by default on new configurations.
    ||| } },
    withUsePre111GroupCnBehavior(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { use_pre111_group_cn_behavior: value } },
      },
    },
    '#use_token_groups':: { 'function': { help: |||
      If true, use the Active Directory tokenGroups constructed attribute of the user to find the group memberships. This will find all security groups including nested ones.
    ||| } },
    withUseTokenGroups(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { use_token_groups: value } },
      },
    },
    '#userattr':: { 'function': { help: |||
      Attribute used for users (default: cn)
    ||| } },
    withUserattr(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { userattr: value } },
      },
    },
    '#userdn':: { 'function': { help: |||
      LDAP domain to use for users (eg: ou=People,dc=example,dc=org)
    ||| } },
    withUserdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { userdn: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_ad_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#anonymous_group_search':: { 'function': { help: |||
        Use anonymous binds when performing LDAP group searches (if true the initial credentials will still be used for the initial connection test).
      ||| } },
      anonymous_group_search(suffix=''):: refSelf.plain('.anonymous_group_search%s' % suffix),
      '#backend':: { 'function': { help: |||
        The mount path for a backend, for example, the path given in "$ vault auth enable -path=my-ad ad".
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#binddn':: { 'function': { help: |||
        Distinguished name of object to bind when performing user and group search.
      ||| } },
      binddn(suffix=''):: refSelf.plain('.binddn%s' % suffix),
      '#bindpass':: { 'function': { help: |||
        LDAP password for searching for the user DN.
      ||| } },
      bindpass(suffix=''):: refSelf.plain('.bindpass%s' % suffix),
      '#case_sensitive_names':: { 'function': { help: |||
        If true, case sensitivity will be used when comparing usernames and groups for matching policies.
      ||| } },
      case_sensitive_names(suffix=''):: refSelf.plain('.case_sensitive_names%s' % suffix),
      '#certificate':: { 'function': { help: |||
        CA certificate to use when verifying LDAP server certificate, must be x509 PEM encoded.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      '#client_tls_cert':: { 'function': { help: |||
        Client certificate to provide to the LDAP server, must be x509 PEM encoded.
      ||| } },
      client_tls_cert(suffix=''):: refSelf.plain('.client_tls_cert%s' % suffix),
      '#client_tls_key':: { 'function': { help: |||
        Client certificate key to provide to the LDAP server, must be x509 PEM encoded.
      ||| } },
      client_tls_key(suffix=''):: refSelf.plain('.client_tls_key%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': { help: |||
        Default lease duration for secrets in seconds
      ||| } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
      '#deny_null_bind':: { 'function': { help: |||
        Denies an unauthenticated LDAP bind request if the user's password is empty; defaults to true
      ||| } },
      deny_null_bind(suffix=''):: refSelf.plain('.deny_null_bind%s' % suffix),
      '#description':: { 'function': { help: |||
        Human-friendly description of the mount for the backend.
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates.
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#discoverdn':: { 'function': { help: |||
        Use anonymous bind to discover the bind DN of a user.
      ||| } },
      discoverdn(suffix=''):: refSelf.plain('.discoverdn%s' % suffix),
      '#groupattr':: { 'function': { help: |||
        LDAP attribute to follow on objects returned by <groupfilter> in order to enumerate user group membership. Examples: "cn" or "memberOf", etc. Default: cn
      ||| } },
      groupattr(suffix=''):: refSelf.plain('.groupattr%s' % suffix),
      '#groupdn':: { 'function': { help: |||
        LDAP search base to use for group membership search (eg: ou=Groups,dc=example,dc=org)
      ||| } },
      groupdn(suffix=''):: refSelf.plain('.groupdn%s' % suffix),
      '#groupfilter':: { 'function': { help: |||
        Go template for querying group membership of user. The template can access the following context variables: UserDN, Username Example: (&(objectClass=group)(member:1.2.840.113556.1.4.1941:={{.UserDN}})) Default: (|(memberUid={{.Username}})(member={{.UserDN}})(uniqueMember={{.UserDN}}))
      ||| } },
      groupfilter(suffix=''):: refSelf.plain('.groupfilter%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#insecure_tls':: { 'function': { help: |||
        Skip LDAP server SSL Certificate verification - insecure and not recommended for production use.
      ||| } },
      insecure_tls(suffix=''):: refSelf.plain('.insecure_tls%s' % suffix),
      '#last_rotation_tolerance':: { 'function': { help: |||
        The number of seconds after a Vault rotation where, if Active Directory shows a later rotation, it should be considered out-of-band.
      ||| } },
      last_rotation_tolerance(suffix=''):: refSelf.plain('.last_rotation_tolerance%s' % suffix),
      '#local':: { 'function': { help: |||
        Mark the secrets engine as local-only. Local engines are not replicated or removed by replication.Tolerance duration to use when checking the last rotation time.
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': { help: |||
        Maximum possible lease duration for secrets in seconds.
      ||| } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        In seconds, the maximum password time-to-live.
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password_policy':: { 'function': { help: |||
        Name of the password policy to use to generate passwords.
      ||| } },
      password_policy(suffix=''):: refSelf.plain('.password_policy%s' % suffix),
      '#request_timeout':: { 'function': { help: |||
        Timeout, in seconds, for the connection when making requests against the server before returning back an error.
      ||| } },
      request_timeout(suffix=''):: refSelf.plain('.request_timeout%s' % suffix),
      '#starttls':: { 'function': { help: |||
        Issue a StartTLS command after establishing unencrypted connection.
      ||| } },
      starttls(suffix=''):: refSelf.plain('.starttls%s' % suffix),
      '#tls_max_version':: { 'function': { help: |||
        Maximum TLS version to use. Accepted values are 'tls10', 'tls11', 'tls12' or 'tls13'. Defaults to 'tls12'
      ||| } },
      tls_max_version(suffix=''):: refSelf.plain('.tls_max_version%s' % suffix),
      '#tls_min_version':: { 'function': { help: |||
        Minimum TLS version to use. Accepted values are 'tls10', 'tls11', 'tls12' or 'tls13'. Defaults to 'tls12'
      ||| } },
      tls_min_version(suffix=''):: refSelf.plain('.tls_min_version%s' % suffix),
      '#ttl':: { 'function': { help: |||
        In seconds, the default password time-to-live.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#upndomain':: { 'function': { help: |||
        Enables userPrincipalDomain login with [username]@UPNDomain.
      ||| } },
      upndomain(suffix=''):: refSelf.plain('.upndomain%s' % suffix),
      '#url':: { 'function': { help: |||
        LDAP URL to connect to (default: ldap://127.0.0.1). Multiple URLs can be specified by concatenating them with commas; they will be tried in-order.
      ||| } },
      url(suffix=''):: refSelf.plain('.url%s' % suffix),
      '#use_pre111_group_cn_behavior':: { 'function': { help: |||
        In Vault 1.1.1 a fix for handling group CN values of different cases unfortunately introduced a regression that could cause previously defined groups to not be found due to a change in the resulting name. If set true, the pre-1.1.1 behavior for matching group CNs will be used. This is only needed in some upgrade scenarios for backwards compatibility. It is enabled by default if the config is upgraded but disabled by default on new configurations.
      ||| } },
      use_pre111_group_cn_behavior(suffix=''):: refSelf.plain('.use_pre111_group_cn_behavior%s' % suffix),
      '#use_token_groups':: { 'function': { help: |||
        If true, use the Active Directory tokenGroups constructed attribute of the user to find the group memberships. This will find all security groups including nested ones.
      ||| } },
      use_token_groups(suffix=''):: refSelf.plain('.use_token_groups%s' % suffix),
      '#userattr':: { 'function': { help: |||
        Attribute used for users (default: cn)
      ||| } },
      userattr(suffix=''):: refSelf.plain('.userattr%s' % suffix),
      '#userdn':: { 'function': { help: |||
        LDAP domain to use for users (eg: ou=People,dc=example,dc=org)
      ||| } },
      userdn(suffix=''):: refSelf.plain('.userdn%s' % suffix),
    },
  },
}
