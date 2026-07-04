{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_nomad_secret_backend+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAddress':: { 'function': { help: |||
      Specifies the address of the Nomad instance, provided as "protocol://host:port" like "http://127.0.0.1:4646".
    ||| } },
    withAddress(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { address: value } },
      },
    },
    '#withAllowedManagedKeys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#withAllowedResponseHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#withAuditNonHmacRequestKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#withAuditNonHmacResponseKeys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The mount path for the Nomad backend.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCaCert':: { 'function': { help: |||
      CA certificate to use when verifying Nomad server certificate, must be x509 PEM encoded.
    ||| } },
    withCaCert(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { ca_cert: value } },
      },
    },
    '#withClientCert':: { 'function': { help: |||
      Client certificate used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_key.
    ||| } },
    withClientCert(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_cert: value } },
      },
    },
    '#withClientKey':: { 'function': { help: |||
      Client key used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert.
    ||| } },
    withClientKey(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key: value } },
      },
    },
    '#withClientKeyWo':: { 'function': { help: |||
      Write-only client key used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert.
    ||| } },
    withClientKeyWo(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key_wo: value } },
      },
    },
    '#withClientKeyWoVersion':: { 'function': { help: |||
      Version counter for write-only client_key.
    ||| } },
    withClientKeyWoVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { client_key_wo_version: value } },
      },
    },
    '#withDefaultLeaseTtlSeconds':: { 'function': { help: |||
      Default lease duration for secrets in seconds.
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#withDelegatedAuthAccessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Human-friendly description of the mount for the backend.
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates.
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withExternalEntropyAccess':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#withForceNoCache':: { 'function': { help: |||
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
    '#withIdentityTokenKey':: { 'function': { help: |||
      The key to use for signing plugin workload identity tokens
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#withListingVisibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#withLocal':: { 'function': { help: |||
      Mark the secrets engine as local-only. Local engines are not replicated or removed by replication. Tolerance duration to use when checking the last rotation time.
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withMaxLeaseTtlSeconds':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds.
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#withMaxTokenNameLength':: { 'function': { help: |||
      Specifies the maximum length to use for the name of the Nomad token generated with Generate Credential. If omitted, 0 is used and ignored, defaulting to the max value allowed by the Nomad version.
    ||| } },
    withMaxTokenNameLength(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_token_name_length: value } },
      },
    },
    '#withMaxTtl':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds.
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
    '#withPassthroughRequestHeaders':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#withPluginVersion':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#withSealWrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#withToken':: { 'function': { help: |||
      Specifies the Nomad Management token to use.
    ||| } },
    withToken(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token: value } },
      },
    },
    '#withTokenWo':: { 'function': { help: |||
      Write-only Nomad Management token to use.
    ||| } },
    withTokenWo(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token_wo: value } },
      },
    },
    '#withTokenWoVersion':: { 'function': { help: |||
      Version counter for write-only token.
    ||| } },
    withTokenWoVersion(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { token_wo_version: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Maximum possible lease duration for secrets in seconds.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_nomad_secret_backend+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_nomad_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        Accessor of the mount
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#address':: { 'function': { help: |||
        Specifies the address of the Nomad instance, provided as "protocol://host:port" like "http://127.0.0.1:4646".
      ||| } },
      address(suffix=''):: refSelf.plain('.address%s' % suffix),
      '#allowed_managed_keys':: { 'function': { help: |||
        List of managed key registry entry names that the mount in question is allowed to access
      ||| } },
      allowed_managed_keys(suffix=''):: refSelf.plain('.allowed_managed_keys%s' % suffix),
      '#allowed_response_headers':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin
      ||| } },
      allowed_response_headers(suffix=''):: refSelf.plain('.allowed_response_headers%s' % suffix),
      '#audit_non_hmac_request_keys':: { 'function': { help: |||
        Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
      ||| } },
      audit_non_hmac_request_keys(suffix=''):: refSelf.plain('.audit_non_hmac_request_keys%s' % suffix),
      '#audit_non_hmac_response_keys':: { 'function': { help: |||
        Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
      ||| } },
      audit_non_hmac_response_keys(suffix=''):: refSelf.plain('.audit_non_hmac_response_keys%s' % suffix),
      '#backend':: { 'function': { help: |||
        The mount path for the Nomad backend.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#ca_cert':: { 'function': { help: |||
        CA certificate to use when verifying Nomad server certificate, must be x509 PEM encoded.
      ||| } },
      ca_cert(suffix=''):: refSelf.plain('.ca_cert%s' % suffix),
      '#client_cert':: { 'function': { help: |||
        Client certificate used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_key.
      ||| } },
      client_cert(suffix=''):: refSelf.plain('.client_cert%s' % suffix),
      '#client_key':: { 'function': { help: |||
        Client key used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert.
      ||| } },
      client_key(suffix=''):: refSelf.plain('.client_key%s' % suffix),
      '#client_key_wo':: { 'function': { help: |||
        Write-only client key used for Nomad's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert.
      ||| } },
      client_key_wo(suffix=''):: refSelf.plain('.client_key_wo%s' % suffix),
      '#client_key_wo_version':: { 'function': { help: |||
        Version counter for write-only client_key.
      ||| } },
      client_key_wo_version(suffix=''):: refSelf.plain('.client_key_wo_version%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': { help: |||
        Default lease duration for secrets in seconds.
      ||| } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
      '#delegated_auth_accessors':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin
      ||| } },
      delegated_auth_accessors(suffix=''):: refSelf.plain('.delegated_auth_accessors%s' % suffix),
      '#description':: { 'function': { help: |||
        Human-friendly description of the mount for the backend.
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates.
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#external_entropy_access':: { 'function': { help: |||
        Enable the secrets engine to access Vault's external entropy source
      ||| } },
      external_entropy_access(suffix=''):: refSelf.plain('.external_entropy_access%s' % suffix),
      '#force_no_cache':: { 'function': { help: |||
        If set to true, disables caching.
      ||| } },
      force_no_cache(suffix=''):: refSelf.plain('.force_no_cache%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_key':: { 'function': { help: |||
        The key to use for signing plugin workload identity tokens
      ||| } },
      identity_token_key(suffix=''):: refSelf.plain('.identity_token_key%s' % suffix),
      '#listing_visibility':: { 'function': { help: |||
        Specifies whether to show this mount in the UI-specific listing endpoint
      ||| } },
      listing_visibility(suffix=''):: refSelf.plain('.listing_visibility%s' % suffix),
      '#local':: { 'function': { help: |||
        Mark the secrets engine as local-only. Local engines are not replicated or removed by replication. Tolerance duration to use when checking the last rotation time.
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': { help: |||
        Maximum possible lease duration for secrets in seconds.
      ||| } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
      '#max_token_name_length':: { 'function': { help: |||
        Specifies the maximum length to use for the name of the Nomad token generated with Generate Credential. If omitted, 0 is used and ignored, defaulting to the max value allowed by the Nomad version.
      ||| } },
      max_token_name_length(suffix=''):: refSelf.plain('.max_token_name_length%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        Maximum possible lease duration for secrets in seconds.
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#options':: { 'function': { help: |||
        Specifies mount type specific options that are passed to the backend
      ||| } },
      options(suffix=''):: refSelf.plain('.options%s' % suffix),
      '#passthrough_request_headers':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin
      ||| } },
      passthrough_request_headers(suffix=''):: refSelf.plain('.passthrough_request_headers%s' % suffix),
      '#plugin_version':: { 'function': { help: |||
        Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
      ||| } },
      plugin_version(suffix=''):: refSelf.plain('.plugin_version%s' % suffix),
      '#seal_wrap':: { 'function': { help: |||
        Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
      ||| } },
      seal_wrap(suffix=''):: refSelf.plain('.seal_wrap%s' % suffix),
      '#token':: { 'function': { help: |||
        Specifies the Nomad Management token to use.
      ||| } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
      '#token_wo':: { 'function': { help: |||
        Write-only Nomad Management token to use.
      ||| } },
      token_wo(suffix=''):: refSelf.plain('.token_wo%s' % suffix),
      '#token_wo_version':: { 'function': { help: |||
        Version counter for write-only token.
      ||| } },
      token_wo_version(suffix=''):: refSelf.plain('.token_wo_version%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Maximum possible lease duration for secrets in seconds.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
