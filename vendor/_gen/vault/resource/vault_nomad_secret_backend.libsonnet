{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_nomad_secret_backend+: { [terraformName]+: {
      } },
    },
    '#withAccessor': { 'function': { help: |||
      Accessor of the mount 
    ||| } },
    withAccessor(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    '#withAddress': { 'function': { help: |||
      Specifies the address of the Nomad instance, provided as "protocol://host:port" like "http://127.0.0.1:4646". 
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    '#withAllowedManagedKeys': { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access 
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object. 
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys': { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object. 
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withBackend': { 'function': { help: |||
      The mount path for the Nomad backend. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCaCert': { 'function': { help: |||
      CA certificate to use when verifying Nomad server certificate, must be x509 PEM encoded. 
    ||| } },
    withCaCert(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { ca_cert: value } },
      },
    },
    '#withClientCert': { 'function': { help: |||
      Client certificate used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_key. 
    ||| } },
    withClientCert(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_cert: value } },
      },
    },
    '#withClientKey': { 'function': { help: |||
      Client key used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert. 
    ||| } },
    withClientKey(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key: value } },
      },
    },
    '#withClientKeyWo': { 'function': { help: |||
      Write-only client key used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert. 
    ||| } },
    withClientKeyWo(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key_wo: value } },
      },
    },
    '#withClientKeyWoVersion': { 'function': { help: |||
      Version counter for write-only client_key. 
    ||| } },
    withClientKeyWoVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key_wo_version: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds': { 'function': { help: |||
      Default lease duration for secrets in seconds. 
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Human-friendly description of the mount for the backend. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount': { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess': { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source 
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache': { 'function': { help: |||
      If set to true, disables caching. 
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdentityTokenKey': { 'function': { help: |||
      The key to use for signing plugin workload identity tokens 
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withListingVisibility': { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint 
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Mark the secrets engine as local-only. Local engines are not replicated or removed by replication. Tolerance duration to use when checking the last rotation time. 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds': { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds. 
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withMaxTokenNameLength': { 'function': { help: |||
      Specifies the maximum length to use for the name of the Nomad token generated with Generate Credential. If omitted, 0 is used and ignored, defaulting to the max value allowed by the Nomad version. 
    ||| } },
    withMaxTokenNameLength(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_token_name_length: value } },
      },
    },
    '#withMaxTtl': { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds. 
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions': { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders': { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin 
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPluginVersion': { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0' 
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withSealWrap': { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability 
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withToken': { 'function': { help: |||
      Specifies the Nomad Management token to use. 
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    '#withTokenWo': { 'function': { help: |||
      Write-only Nomad Management token to use. 
    ||| } },
    withTokenWo(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    '#withTokenWoVersion': { 'function': { help: |||
      Version counter for write-only token. 
    ||| } },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
    '#withTtl': { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
