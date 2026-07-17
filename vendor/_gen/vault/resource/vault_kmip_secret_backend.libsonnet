{
  local outerSelf = self,
  new(terraformName, path):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: {
        path: path,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { [name]: value } },
    } },
    '#withAllowedManagedKeys':: { 'function': {
      help:
        |||
          List of managed key registry entry names that the mount in question is allowed to access
        |||,
    } },
    withAllowedManagedKeys(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
    } },
    '#withAllowedResponseHeaders':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withAllowedResponseHeaders(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
    } },
    '#withAuditNonHmacRequestKeys':: { 'function': {
      help:
        |||
          Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
        |||,
    } },
    withAuditNonHmacRequestKeys(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
    } },
    '#withAuditNonHmacResponseKeys':: { 'function': {
      help:
        |||
          Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
        |||,
    } },
    withAuditNonHmacResponseKeys(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
    } },
    '#withDefaultLeaseTtlSeconds':: { 'function': {
      help:
        |||
          Default lease duration for tokens and secrets in seconds
        |||,
    } },
    withDefaultLeaseTtlSeconds(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
    } },
    '#withDefaultTlsClientKeyBits':: { 'function': {
      help:
        |||
          Client certificate key bits, valid values depend on key type
        |||,
    } },
    withDefaultTlsClientKeyBits(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_key_bits: value } },
    } },
    '#withDefaultTlsClientKeyType':: { 'function': {
      help:
        |||
          Client certificate key type, rsa or ec
        |||,
    } },
    withDefaultTlsClientKeyType(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_key_type: value } },
    } },
    '#withDefaultTlsClientTtl':: { 'function': {
      help:
        |||
          Client certificate TTL in seconds
        |||,
    } },
    withDefaultTlsClientTtl(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { default_tls_client_ttl: value } },
    } },
    '#withDelegatedAuthAccessors':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withDelegatedAuthAccessors(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
    } },
    '#withDescription':: { 'function': {
      help:
        |||
          Human-friendly description of the mount for the backend
        |||,
    } },
    withDescription(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { description: value } },
    } },
    '#withDisableRemount':: { 'function': {
      help:
        |||
          If set, opts out of mount migration on path updates.
        |||,
    } },
    withDisableRemount(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { disable_remount: value } },
    } },
    '#withExternalEntropyAccess':: { 'function': {
      help:
        |||
          Enable the secrets engine to access Vault's external entropy source
        |||,
    } },
    withExternalEntropyAccess(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
    } },
    '#withForceNoCache':: { 'function': {
      help:
        |||
          If set to true, disables caching.
        |||,
    } },
    withForceNoCache(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { force_no_cache: value } },
    } },
    withId(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { id: value } },
    } },
    '#withIdentityTokenKey':: { 'function': {
      help:
        |||
          The key to use for signing plugin workload identity tokens
        |||,
    } },
    withIdentityTokenKey(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { identity_token_key: value } },
    } },
    '#withListenAddrs':: { 'function': {
      help:
        |||
          Addresses the KMIP server should listen on (host:port)
        |||,
    } },
    withListenAddrs(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { listen_addrs: value } },
    } },
    '#withListingVisibility':: { 'function': {
      help:
        |||
          Specifies whether to show this mount in the UI-specific listing endpoint
        |||,
    } },
    withListingVisibility(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { listing_visibility: value } },
    } },
    '#withLocal':: { 'function': {
      help:
        |||
          Local mount flag that can be explicitly set to true to enforce local mount in HA environment
        |||,
    } },
    withLocal(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { 'local': value } },
    } },
    '#withMaxLeaseTtlSeconds':: { 'function': {
      help:
        |||
          Maximum possible lease duration for tokens and secrets in seconds
        |||,
    } },
    withMaxLeaseTtlSeconds(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withOptions':: { 'function': {
      help:
        |||
          Specifies mount type specific options that are passed to the backend
        |||,
    } },
    withOptions(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { options: value } },
    } },
    '#withPassthroughRequestHeaders':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withPassthroughRequestHeaders(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path where KMIP secret backend will be mounted
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { path: value } },
    } },
    '#withPluginVersion':: { 'function': {
      help:
        |||
          Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
        |||,
    } },
    withPluginVersion(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { plugin_version: value } },
    } },
    '#withSealWrap':: { 'function': {
      help:
        |||
          Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
        |||,
    } },
    withSealWrap(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { seal_wrap: value } },
    } },
    '#withServerHostnames':: { 'function': {
      help:
        |||
          Hostnames to include in the server's TLS certificate as SAN DNS names. The first will be used as the common name (CN)
        |||,
    } },
    withServerHostnames(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { server_hostnames: value } },
    } },
    '#withServerIps':: { 'function': {
      help:
        |||
          IPs to include in the server's TLS certificate as SAN IP addresses
        |||,
    } },
    withServerIps(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { server_ips: value } },
    } },
    '#withTlsCaKeyBits':: { 'function': {
      help:
        |||
          CA key bits, valid values depend on key type
        |||,
    } },
    withTlsCaKeyBits(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { tls_ca_key_bits: value } },
    } },
    '#withTlsCaKeyType':: { 'function': {
      help:
        |||
          CA key type, rsa or ec
        |||,
    } },
    withTlsCaKeyType(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { tls_ca_key_type: value } },
    } },
    '#withTlsMinVersion':: { 'function': {
      help:
        |||
          Minimum TLS version to accept
        |||,
    } },
    withTlsMinVersion(value):: self { resource+: {
      vault_kmip_secret_backend+: { [terraformName]+: { tls_min_version: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kmip_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': {
        help:
          |||
            Accessor of the mount
          |||,
      } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#allowed_managed_keys':: { 'function': {
        help:
          |||
            List of managed key registry entry names that the mount in question is allowed to access
          |||,
      } },
      allowed_managed_keys(suffix=''):: refSelf.plain('.allowed_managed_keys%s' % suffix),
      '#allowed_response_headers':: { 'function': {
        help:
          |||
            List of headers to allow and pass from the request to the plugin
          |||,
      } },
      allowed_response_headers(suffix=''):: refSelf.plain('.allowed_response_headers%s' % suffix),
      '#audit_non_hmac_request_keys':: { 'function': {
        help:
          |||
            Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
          |||,
      } },
      audit_non_hmac_request_keys(suffix=''):: refSelf.plain('.audit_non_hmac_request_keys%s' % suffix),
      '#audit_non_hmac_response_keys':: { 'function': {
        help:
          |||
            Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
          |||,
      } },
      audit_non_hmac_response_keys(suffix=''):: refSelf.plain('.audit_non_hmac_response_keys%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': {
        help:
          |||
            Default lease duration for tokens and secrets in seconds
          |||,
      } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
      '#default_tls_client_key_bits':: { 'function': {
        help:
          |||
            Client certificate key bits, valid values depend on key type
          |||,
      } },
      default_tls_client_key_bits(suffix=''):: refSelf.plain('.default_tls_client_key_bits%s' % suffix),
      '#default_tls_client_key_type':: { 'function': {
        help:
          |||
            Client certificate key type, rsa or ec
          |||,
      } },
      default_tls_client_key_type(suffix=''):: refSelf.plain('.default_tls_client_key_type%s' % suffix),
      '#default_tls_client_ttl':: { 'function': {
        help:
          |||
            Client certificate TTL in seconds
          |||,
      } },
      default_tls_client_ttl(suffix=''):: refSelf.plain('.default_tls_client_ttl%s' % suffix),
      '#delegated_auth_accessors':: { 'function': {
        help:
          |||
            List of headers to allow and pass from the request to the plugin
          |||,
      } },
      delegated_auth_accessors(suffix=''):: refSelf.plain('.delegated_auth_accessors%s' % suffix),
      '#description':: { 'function': {
        help:
          |||
            Human-friendly description of the mount for the backend
          |||,
      } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_remount':: { 'function': {
        help:
          |||
            If set, opts out of mount migration on path updates.
          |||,
      } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#external_entropy_access':: { 'function': {
        help:
          |||
            Enable the secrets engine to access Vault's external entropy source
          |||,
      } },
      external_entropy_access(suffix=''):: refSelf.plain('.external_entropy_access%s' % suffix),
      '#force_no_cache':: { 'function': {
        help:
          |||
            If set to true, disables caching.
          |||,
      } },
      force_no_cache(suffix=''):: refSelf.plain('.force_no_cache%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_key':: { 'function': {
        help:
          |||
            The key to use for signing plugin workload identity tokens
          |||,
      } },
      identity_token_key(suffix=''):: refSelf.plain('.identity_token_key%s' % suffix),
      '#listen_addrs':: { 'function': {
        help:
          |||
            Addresses the KMIP server should listen on (host:port)
          |||,
      } },
      listen_addrs(suffix=''):: refSelf.plain('.listen_addrs%s' % suffix),
      '#listing_visibility':: { 'function': {
        help:
          |||
            Specifies whether to show this mount in the UI-specific listing endpoint
          |||,
      } },
      listing_visibility(suffix=''):: refSelf.plain('.listing_visibility%s' % suffix),
      '#local':: { 'function': {
        help:
          |||
            Local mount flag that can be explicitly set to true to enforce local mount in HA environment
          |||,
      } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': {
        help:
          |||
            Maximum possible lease duration for tokens and secrets in seconds
          |||,
      } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#options':: { 'function': {
        help:
          |||
            Specifies mount type specific options that are passed to the backend
          |||,
      } },
      options(suffix=''):: refSelf.plain('.options%s' % suffix),
      '#passthrough_request_headers':: { 'function': {
        help:
          |||
            List of headers to allow and pass from the request to the plugin
          |||,
      } },
      passthrough_request_headers(suffix=''):: refSelf.plain('.passthrough_request_headers%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            Path where KMIP secret backend will be mounted
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#plugin_version':: { 'function': {
        help:
          |||
            Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
          |||,
      } },
      plugin_version(suffix=''):: refSelf.plain('.plugin_version%s' % suffix),
      '#seal_wrap':: { 'function': {
        help:
          |||
            Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
          |||,
      } },
      seal_wrap(suffix=''):: refSelf.plain('.seal_wrap%s' % suffix),
      '#server_hostnames':: { 'function': {
        help:
          |||
            Hostnames to include in the server's TLS certificate as SAN DNS names. The first will be used as the common name (CN)
          |||,
      } },
      server_hostnames(suffix=''):: refSelf.plain('.server_hostnames%s' % suffix),
      '#server_ips':: { 'function': {
        help:
          |||
            IPs to include in the server's TLS certificate as SAN IP addresses
          |||,
      } },
      server_ips(suffix=''):: refSelf.plain('.server_ips%s' % suffix),
      '#tls_ca_key_bits':: { 'function': {
        help:
          |||
            CA key bits, valid values depend on key type
          |||,
      } },
      tls_ca_key_bits(suffix=''):: refSelf.plain('.tls_ca_key_bits%s' % suffix),
      '#tls_ca_key_type':: { 'function': {
        help:
          |||
            CA key type, rsa or ec
          |||,
      } },
      tls_ca_key_type(suffix=''):: refSelf.plain('.tls_ca_key_type%s' % suffix),
      '#tls_min_version':: { 'function': {
        help:
          |||
            Minimum TLS version to accept
          |||,
      } },
      tls_min_version(suffix=''):: refSelf.plain('.tls_min_version%s' % suffix),

    },

  },

}
