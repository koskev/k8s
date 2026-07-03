{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_backend+: { [terraformName]+: {
      } },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withToken(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withBasePath(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { base_path: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withTokenWo(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    withAddress(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
  },
}
