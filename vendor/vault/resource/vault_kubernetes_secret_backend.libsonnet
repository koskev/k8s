{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_secret_backend+: { [terraformName]+: {
        path: path,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withDisableLocalCaJwt(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { disable_local_ca_jwt: value } },
      },
    },
    withKubernetesHost(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { kubernetes_host: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withServiceAccountJwt(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { service_account_jwt: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withServiceAccountJwtWoVersion(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { service_account_jwt_wo_version: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withServiceAccountJwtWo(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { service_account_jwt_wo: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withKubernetesCaCert(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { kubernetes_ca_cert: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
  },
}
