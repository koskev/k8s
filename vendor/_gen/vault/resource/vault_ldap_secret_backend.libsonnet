{
  new(terraformName, binddn):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend+: { [terraformName]+: {
        binddn: binddn,
      } },
    },
    '#withAccessor':: { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAllowedManagedKeys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withBinddn':: { 'function': { help: |||
      Distinguished name of object to bind when performing user and group search. 
    ||| } },
    withBinddn(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    '#withBindpass':: { 'function': { help: |||
      LDAP password for searching for the user DN. 
    ||| } },
    withBindpass(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    '#withBindpassWo':: { 'function': { help: |||
      Write-only LDAP password for searching for the user DN. 
    ||| } },
    withBindpassWo(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { bindpass_wo: value } },
      },
    },
    '#withBindpassWoVersion':: { 'function': { help: |||
      Version counter for write-only bind password. 
    ||| } },
    withBindpassWoVersion(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { bindpass_wo_version: value } },
      },
    },
    '#withCertificate':: { 'function': { help: |||
      CA certificate to use when verifying LDAP server certificate, must be x509 PEM encoded. 
    ||| } },
    withCertificate(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    '#withClientTlsCert':: { 'function': { help: |||
      Client certificate to provide to the LDAP server, must be x509 PEM encoded. 
    ||| } },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    '#withClientTlsKey':: { 'function': { help: |||
      Client certificate key to provide to the LDAP server, must be x509 PEM encoded. 
    ||| } },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    '#withConnectionTimeout':: { 'function': { help: |||
      Timeout, in seconds, when attempting to connect to the LDAP server before trying the next URL in the configuration. 
    ||| } },
    withConnectionTimeout(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { connection_timeout: value } },
      },
    },
    '#withCredentialType':: { 'function': { help: |||
      The type of credential to manage. Options include: 'password', 'phrase'. Defaults to 'password'. 
    ||| } },
    withCredentialType(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { credential_type: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds':: { 'function': { help: |||
      Default lease duration for tokens and secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableAutomatedRotation':: { 'function': { help: |||
      Stops rotation of the root credential until set to false. 
    ||| } },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache':: { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey':: { 'function': { help: |||
      The key to use for signing plugin workload identity tokens 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withInsecureTls':: { 'function': { help: |||
      Skip LDAP server SSL Certificate verification - insecure and not recommended for production use. 
    ||| } },
    withInsecureTls(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    '#withListingVisibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Local mount flag that can be explicitly set to true to enforce local mount in HA environment 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds':: { 'function': { help: |||
      Maximum possible lease duration for tokens and secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPasswordPolicy':: { 'function': { help: |||
      Name of the password policy to use to generate passwords. 
    ||| } },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { password_policy: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      The path where the LDAP secrets backend is mounted. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPluginVersion':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withRequestTimeout':: { 'function': { help: |||
      Timeout, in seconds, for the connection when making requests against the server before returning back an error. 
    ||| } },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    '#withRotationPeriod':: { 'function': { help: |||
      The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule. 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withRotationSchedule':: { 'function': { help: |||
      The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period. 
    ||| } },
    withRotationSchedule(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    '#withRotationWindow':: { 'function': { help: |||
      The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule. 
    ||| } },
    withRotationWindow(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    '#withSchema':: { 'function': { help: |||
      The LDAP schema to use when storing entry passwords. Valid schemas include openldap, ad, and racf. 
    ||| } },
    withSchema(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { schema: value } },
      },
    },
    '#withSealWrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withSelfManaged':: { 'function': { help: |||
      If true, Vault performs rotations by authenticating as this account using its current password (no privileged bind DN). Immutable after creation. Requires password on create. 
    ||| } },
    withSelfManaged(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { self_managed: value } },
      },
    },
    '#withSkipStaticRoleImportRotation':: { 'function': { help: |||
      Skip rotation of static role secrets on import. 
    ||| } },
    withSkipStaticRoleImportRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { skip_static_role_import_rotation: value } },
      },
    },
    '#withStarttls':: { 'function': { help: |||
      Issue a StartTLS command after establishing unencrypted connection. 
    ||| } },
    withStarttls(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    '#withUpndomain':: { 'function': { help: |||
      Enables userPrincipalDomain login with [username]@UPNDomain. 
    ||| } },
    withUpndomain(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    '#withUrl':: { 'function': { help: |||
      LDAP URL to connect to (default: ldap://127.0.0.1). Multiple URLs can be specified by concatenating them with commas; they will be tried in-order. 
    ||| } },
    withUrl(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { url: value } },
      },
    },
    '#withUserattr':: { 'function': { help: |||
      Attribute used for users (default: cn) 
    ||| } },
    withUserattr(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { userattr: value } },
      },
    },
    '#withUserdn':: { 'function': { help: |||
      LDAP domain to use for users (eg: ou=People,dc=example,dc=org) 
    ||| } },
    withUserdn(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { userdn: value } },
      },
    },
  },
}
