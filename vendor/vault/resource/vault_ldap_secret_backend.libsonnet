{
  new(terraformName, binddn):: {
    _type:: 'tf',
    resource+: {
      vault_ldap_secret_backend+: { [terraformName]+: {
        binddn: binddn,
      } },
    },
    withRotationWindow(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { rotation_window: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withBindpass(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { bindpass: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withSkipStaticRoleImportRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { skip_static_role_import_rotation: value } },
      },
    },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { password_policy: value } },
      },
    },
    withUrl(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { url: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withBindpassWo(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { bindpass_wo: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withCredentialType(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { credential_type: value } },
      },
    },
    withRequestTimeout(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { request_timeout: value } },
      },
    },
    withSchema(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { schema: value } },
      },
    },
    withUpndomain(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { upndomain: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withUserdn(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { userdn: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withClientTlsKey(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { client_tls_key: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withDisableAutomatedRotation(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { disable_automated_rotation: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withInsecureTls(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { insecure_tls: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withSelfManaged(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { self_managed: value } },
      },
    },
    withStarttls(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { starttls: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withBinddn(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { binddn: value } },
      },
    },
    withBindpassWoVersion(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { bindpass_wo_version: value } },
      },
    },
    withConnectionTimeout(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { connection_timeout: value } },
      },
    },
    withRotationSchedule(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { rotation_schedule: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withRotationPeriod(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { rotation_period: value } },
      },
    },
    withClientTlsCert(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { client_tls_cert: value } },
      },
    },
    withCertificate(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { certificate: value } },
      },
    },
    withUserattr(value):: self {
      resource+: {
        vault_ldap_secret_backend+: { [terraformName]+: { userattr: value } },
      },
    },
  },
}
