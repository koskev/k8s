{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_kubernetes_secret_backend+: { [terraformName]+: {
        path: path,
      } },
    },
    '#withAccessor':: { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAllowedManagedKeys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds':: { 'function': { help: |||
      Default lease duration for tokens and secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableLocalCaJwt':: { 'function': { help: |||
      Disable defaulting to the local CA certificate and service account JWT when running in a Kubernetes pod. 
    ||| } },
    withDisableLocalCaJwt(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { disable_local_ca_jwt: value } },
      },
    },
    '#withExternalEntropyAccess':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache':: { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey':: { 'function': { help: |||
      The key to use for signing plugin workload identity tokens 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withKubernetesCaCert':: { 'function': { help: |||
      A PEM-encoded CA certificate used by the secret engine to verify the Kubernetes API server certificate. Defaults to the local pod’s CA if found, or otherwise the host's root CA set. 
    ||| } },
    withKubernetesCaCert(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { kubernetes_ca_cert: value } },
      },
    },
    '#withKubernetesHost':: { 'function': { help: |||
      The Kubernetes API URL to connect to. 
    ||| } },
    withKubernetesHost(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { kubernetes_host: value } },
      },
    },
    '#withListingVisibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Local mount flag that can be explicitly set to true to enforce local mount in HA environment 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds':: { 'function': { help: |||
      Maximum possible lease duration for tokens and secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Where the secret backend will be mounted 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPluginVersion':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withSealWrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withServiceAccountJwt':: { 'function': { help: |||
      The JSON web token of the service account used by the secrets engine to manage Kubernetes credentials. Defaults to the local pod’s JWT if found. 
    ||| } },
    withServiceAccountJwt(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { service_account_jwt: value } },
      },
    },
    '#withServiceAccountJwtWo':: { 'function': { help: |||
      Write-only JSON web token of the service account used by the secrets engine to manage Kubernetes credentials. This value will not be stored in state. 
    ||| } },
    withServiceAccountJwtWo(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { service_account_jwt_wo: value } },
      },
    },
    '#withServiceAccountJwtWoVersion':: { 'function': { help: |||
      Version counter for write-only service account JWT. 
    ||| } },
    withServiceAccountJwtWoVersion(value):: self {
      resource+: {
        vault_kubernetes_secret_backend+: { [terraformName]+: { service_account_jwt_wo_version: value } },
      },
    },
  },
}
