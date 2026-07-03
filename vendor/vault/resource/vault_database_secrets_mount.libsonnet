{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_database_secrets_mount+: { [terraformName]+: {
        path: path,
      } },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { id: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { 'local': value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { description: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { namespace: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { options: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { accessor: value } },
      },
    },
    withEngineCount(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { engine_count: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { path: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_database_secrets_mount+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
  },
}
