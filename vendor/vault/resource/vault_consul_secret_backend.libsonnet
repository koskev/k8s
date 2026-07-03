{
  new(terraformName, address):: {
    _type:: 'tf',
    resource+: {
      vault_consul_secret_backend+: { [terraformName]+: {
        address: address,
      } },
    },
    withAddress(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    withClientKey(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_key: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withTokenWo(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withCaCert(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { ca_cert: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withClientKeyWo(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_key_wo: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withBootstrap(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { bootstrap: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withToken(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withClientCert(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_cert: value } },
      },
    },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withClientKeyWoVersion(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_key_wo_version: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withScheme(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { scheme: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
  },
}
