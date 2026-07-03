{
  new(terraformName, path, type):: {
    _type:: 'tf',
    resource+: {
      vault_mount+: { [terraformName]+: {
        path: path,
        type: type,
      } },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { description: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { path: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { type: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { accessor: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { namespace: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { 'local': value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { options: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { id: value } },
      },
    },
  },
}
