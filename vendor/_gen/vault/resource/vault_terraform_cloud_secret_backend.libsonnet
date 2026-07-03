{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_terraform_cloud_secret_backend+: { [terraformName]+: {
      } },
    },
    '#withAccessor':: { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAddress':: { 'function': { help: |||
      Specifies the address of the Terraform Cloud instance, provided as "host:port" like "127.0.0.1:8500". 
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    '#withAllowedManagedKeys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Unique name of the Vault Terraform Cloud mount to configure 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    '#withBasePath':: { 'function': { help: |||
      Specifies the base path for the Terraform Cloud or Enterprise API. 
    ||| } },
    withBasePath(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { base_path: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds':: { 'function': { help: |||
      Default lease duration for secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache':: { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey':: { 'function': { help: |||
      The key to use for signing plugin workload identity tokens 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withListingVisibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Local mount flag that can be explicitly set to true to enforce local mount in HA environment 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPluginVersion':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withSealWrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withToken':: { 'function': { help: |||
      Specifies the Terraform Cloud access token to use. 
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    '#withTokenWo':: { 'function': { help: |||
      Write-only Terraform Cloud access token to use. 
    ||| } },
    withTokenWo(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    '#withTokenWoVersion':: { 'function': { help: |||
      Version counter for write-only secret data. 
    ||| } },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_terraform_cloud_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
  },
}
