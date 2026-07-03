{
  new(terraformName, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: {
        path: path,
      } },
    },
    '#withAccessor': { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAllowedManagedKeys': { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds': { 'function': { help: |||
      Default lease duration for tokens and secrets in seconds 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDefaultTlsClientKeyBits': { 'function': { help: |||
      Client certificate key bits, valid values depend on key type 
    ||| } },
    withDefaultTlsClientKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_key_bits: value } },
      },
    },
    '#withDefaultTlsClientKeyType': { 'function': { help: |||
      Client certificate key type, rsa or ec 
    ||| } },
    withDefaultTlsClientKeyType(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_key_type: value } },
      },
    },
    '#withDefaultTlsClientTtl': { 'function': { help: |||
      Client certificate TTL in seconds 
    ||| } },
    withDefaultTlsClientTtl(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_ttl: value } },
      },
    },
    '#withDelegatedAuthAccessors': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Human-friendly description of the mount for the backend 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess': { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache': { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey': { 'function': { help: |||
      The key to use for signing plugin workload identity tokens 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withListenAddrs': { 'function': { help: |||
      Addresses the KMIP server should listen on (host:port) 
    ||| } },
    withListenAddrs(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { listen_addrs: value } },
      },
    },
    '#withListingVisibility': { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Local mount flag that can be explicitly set to true to enforce local mount in HA environment 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds': { 'function': { help: |||
      Maximum possible lease duration for tokens and secrets in seconds 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions': { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path where KMIP secret backend will be mounted 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    '#withPluginVersion': { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withSealWrap': { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withServerHostnames': { 'function': { help: |||
      Hostnames to include in the server's TLS certificate as SAN DNS names. The first will be used as the common name (CN) 
    ||| } },
    withServerHostnames(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { server_hostnames: value } },
      },
    },
    '#withServerIps': { 'function': { help: |||
      IPs to include in the server's TLS certificate as SAN IP addresses 
    ||| } },
    withServerIps(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { server_ips: value } },
      },
    },
    '#withTlsCaKeyBits': { 'function': { help: |||
      CA key bits, valid values depend on key type 
    ||| } },
    withTlsCaKeyBits(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { tls_ca_key_bits: value } },
      },
    },
    '#withTlsCaKeyType': { 'function': { help: |||
      CA key type, rsa or ec 
    ||| } },
    withTlsCaKeyType(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { tls_ca_key_type: value } },
      },
    },
    '#withTlsMinVersion': { 'function': { help: |||
      Minimum TLS version to accept 
    ||| } },
    withTlsMinVersion(value):: self {
      resource+: {
        vault_kmip_secret_backend+: { [terraformName]+: { tls_min_version: value } },
      },
    },
  },
}
