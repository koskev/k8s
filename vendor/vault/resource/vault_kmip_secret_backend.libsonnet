{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: {
        path: path,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withDefaultTlsClientKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_key_bits: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withListenAddrs(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { listen_addrs: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withTlsCaKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { tls_ca_key_bits: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withTlsCaKeyType(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { tls_ca_key_type: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withServerIps(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { server_ips: value } },
      },
    },
    withServerHostnames(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { server_hostnames: value } },
      },
    },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
    withDefaultTlsClientTtl(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_ttl: value } },
      },
    },
    withDefaultTlsClientKeyType(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_key_type: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
  },
}
