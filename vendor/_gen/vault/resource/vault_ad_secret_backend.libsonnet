{
  new(terraformName, binddn, bindpass):: {
    _type:: 'tf',
    resource+: {
      vault_ad_secret_backend+: { [terraformName]+: {
        binddn: binddn,
        bindpass: bindpass,
      } },
    },
    '#withAnonymousGroupSearch':: { 'function': { help: |||
      Use anonymous binds when performing LDAP group searches (if true the initial credentials will still be used for the initial connection test). 
    ||| } },
    withAnonymousGroupSearch(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { anonymous_group_search: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The mount path for a backend, for example, the path given in "$ vault auth enable -path=my-ad ad". 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBinddn':: { 'function': { help: |||
      Distinguished name of object to bind when performing user and group search. 
    ||| } },
    withBinddn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    '#withBindpass':: { 'function': { help: |||
      LDAP password for searching for the user DN. 
    ||| } },
    withBindpass(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    '#withCaseSensitiveNames':: { 'function': { help: |||
      If true, case sensitivity will be used when comparing usernames and groups for matching policies. 
    ||| } },
    withCaseSensitiveNames(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { case_sensitive_names: value } },
      },
    },
    '#withCertificate':: { 'function': { help: |||
      CA certificate to use when verifying LDAP server certificate, must be x509 PEM encoded. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withClientTlsCert':: { 'function': { help: |||
      Client certificate to provide to the LDAP server, must be x509 PEM encoded. 
    ||| } },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    '#withClientTlsKey':: { 'function': { help: |||
      Client certificate key to provide to the LDAP server, must be x509 PEM encoded. 
    ||| } },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds':: { 'function': { help: |||
      Default lease duration for secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDenyNullBind':: { 'function': { help: |||
      Denies an unauthenticated LDAP bind request if the user's password is empty; defaults to true 
    ||| } },
    withDenyNullBind(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { deny_null_bind: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withDiscoverdn':: { 'function': { help: |||
      Use anonymous bind to discover the bind DN of a user. 
    ||| } },
    withDiscoverdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { discoverdn: value } },
      },
    },
    '#withGroupattr':: { 'function': { help: |||
      LDAP attribute to follow on objects returned by <groupfilter> in order to enumerate user group membership. Examples: "cn" or "memberOf", etc. Default: cn 
    ||| } },
    withGroupattr(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupattr: value } },
      },
    },
    '#withGroupdn':: { 'function': { help: |||
      LDAP search base to use for group membership search (eg: ou=Groups,dc=example,dc=org) 
    ||| } },
    withGroupdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { groupdn: value } },
      },
    },
    '#withGroupfilter':: { 'function': { help: |||
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
    '#withInsecureTls':: { 'function': { help: |||
      Skip LDAP server SSL Certificate verification - insecure and not recommended for production use. 
    ||| } },
    withInsecureTls(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    '#withLastRotationTolerance':: { 'function': { help: |||
      The number of seconds after a Vault rotation where, if Active Directory shows a later rotation, it should be considered out-of-band. 
    ||| } },
    withLastRotationTolerance(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { last_rotation_tolerance: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Mark the secrets engine as local-only. Local engines are not replicated or removed by replication.Tolerance duration to use when checking the last rotation time. 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds. 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      In seconds, the maximum password time-to-live. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPasswordPolicy':: { 'function': { help: |||
      Name of the password policy to use to generate passwords. 
    ||| } },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { password_policy: value } },
      },
    },
    '#withRequestTimeout':: { 'function': { help: |||
      Timeout, in seconds, for the connection when making requests against the server before returning back an error. 
    ||| } },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    '#withStarttls':: { 'function': { help: |||
      Issue a StartTLS command after establishing unencrypted connection. 
    ||| } },
    withStarttls(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    '#withTlsMaxVersion':: { 'function': { help: |||
      Maximum TLS version to use. Accepted values are 'tls10', 'tls11', 'tls12' or 'tls13'. Defaults to 'tls12' 
    ||| } },
    withTlsMaxVersion(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { tls_max_version: value } },
      },
    },
    '#withTlsMinVersion':: { 'function': { help: |||
      Minimum TLS version to use. Accepted values are 'tls10', 'tls11', 'tls12' or 'tls13'. Defaults to 'tls12' 
    ||| } },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      In seconds, the default password time-to-live. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withUpndomain':: { 'function': { help: |||
      Enables userPrincipalDomain login with [username]@UPNDomain. 
    ||| } },
    withUpndomain(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    '#withUrl':: { 'function': { help: |||
      LDAP URL to connect to (default: ldap://127.0.0.1). Multiple URLs can be specified by concatenating them with commas; they will be tried in-order. 
    ||| } },
    withUrl(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { url: value } },
      },
    },
    '#withUsePre111GroupCnBehavior':: { 'function': { help: |||
      In Vault 1.1.1 a fix for handling group CN values of different cases unfortunately introduced a regression that could cause previously defined groups to not be found due to a change in the resulting name. If set true, the pre-1.1.1 behavior for matching group CNs will be used. This is only needed in some upgrade scenarios for backwards compatibility. It is enabled by default if the config is upgraded but disabled by default on new configurations. 
    ||| } },
    withUsePre111GroupCnBehavior(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { use_pre111_group_cn_behavior: value } },
      },
    },
    '#withUseTokenGroups':: { 'function': { help: |||
      If true, use the Active Directory tokenGroups constructed attribute of the user to find the group memberships. This will find all security groups including nested ones. 
    ||| } },
    withUseTokenGroups(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { use_token_groups: value } },
      },
    },
    '#withUserattr':: { 'function': { help: |||
      Attribute used for users (default: cn) 
    ||| } },
    withUserattr(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { userattr: value } },
      },
    },
    '#withUserdn':: { 'function': { help: |||
      LDAP domain to use for users (eg: ou=People,dc=example,dc=org) 
    ||| } },
    withUserdn(value):: self {
      resource+: {
        vault_ad_secret_backend+: { [terraformName]+: { userdn: value } },
      },
    },
  },
}
