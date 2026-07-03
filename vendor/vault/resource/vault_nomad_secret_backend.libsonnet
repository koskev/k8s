{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_nomad_secret_backend+: { [terraformName]+: {
      } },
    },
    withClientKey(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withMaxTokenNameLength(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_token_name_length: value } },
      },
    },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withMaxTtl(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    withCaCert(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { ca_cert: value } },
      },
    },
    withClientKeyWoVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key_wo_version: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withClientCert(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_cert: value } },
      },
    },
    withToken(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    withTokenWo(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withTtl(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
    withAddress(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withClientKeyWo(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key_wo: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
  },
}
