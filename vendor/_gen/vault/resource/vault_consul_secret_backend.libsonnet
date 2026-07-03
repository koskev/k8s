{
  new(terraformName, address):: {
    _type:: 'tf',
    resource+: {
      vault_consul_secret_backend+: { [terraformName]+: {
        address: address,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAddress': { 'function': { help: |||
      Specifies the address of the Consul instance, provided as "host:port" like "127.0.0.1:8500". 
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    '#withAllowedManagedKeys': { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withBootstrap': { 'function': { help: |||
      Denotes a backend resource that is used to bootstrap the Consul ACL system. Only one resource may be used to bootstrap. 
    ||| } },
    withBootstrap(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { bootstrap: value } },
      },
    },
    '#withCaCert': { 'function': { help: |||
      CA certificate to use when verifying Consul server certificate, must be x509 PEM encoded. 
    ||| } },
    withCaCert(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { ca_cert: value } },
      },
    },
    '#withClientCert': { 'function': { help: |||
      Client certificate used for Consul's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_key. 
    ||| } },
    withClientCert(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_cert: value } },
      },
    },
    '#withClientKey': { 'function': { help: |||
      Client key used for Consul's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert. Mutually exclusive with 'client_key_wo'. 
    ||| } },
    withClientKey(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_key: value } },
      },
    },
    '#withClientKeyWo': { 'function': { help: |||
      Client key used for Consul's TLS communication, must be x509 PEM encoded. This field is write-only and will never be stored in state. Mutually exclusive with 'client_key'. Requires 'client_key_wo_version' to trigger updates. 
    ||| } },
    withClientKeyWo(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_key_wo: value } },
      },
    },
    '#withClientKeyWoVersion': { 'function': { help: |||
      Version counter for the write-only client key. Increment this value to trigger rotation of the client key. Required when using 'client_key_wo'. 
    ||| } },
    withClientKeyWoVersion(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { client_key_wo_version: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds': { 'function': { help: |||
      Default lease duration for secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess': { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache': { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey': { 'function': { help: |||
      The key to use for signing plugin workload identity tokens 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withListingVisibility': { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the secret backend is local only 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds': { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions': { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Unique name of the Vault Consul mount to configure 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPluginVersion': { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withScheme': { 'function': { help: |||
      Specifies the URL scheme to use. Defaults to "http". 
    ||| } },
    withScheme(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { scheme: value } },
      },
    },
    '#withSealWrap': { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withToken': { 'function': { help: |||
      Specifies the Consul token to use when managing or issuing new tokens. Mutually exclusive with 'token_wo'. 
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    '#withTokenWo': { 'function': { help: |||
      Specifies the Consul token to use when managing or issuing new tokens. This field is write-only and will never be stored in state. Mutually exclusive with 'token'. Requires 'token_wo_version' to trigger updates. 
    ||| } },
    withTokenWo(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    '#withTokenWoVersion': { 'function': { help: |||
      Version counter for the write-only token. Increment this value to trigger rotation of the token. Required when using 'token_wo'. 
    ||| } },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_consul_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
  },
}
