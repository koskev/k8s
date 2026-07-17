{
  local outerSelf = self,
  new(terraformName, address):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_consul_secret_backend+: { [terraformName]+: {
        address: address,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { [name]: value } },
    } },
    '#withAddress':: { 'function': {
      help:
        |||
          Specifies the address of the Consul instance, provided as "host:port" like "127.0.0.1:8500".
        |||,
    } },
    withAddress(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { address: value } },
    } },
    '#withAllowedManagedKeys':: { 'function': {
      help:
        |||
          List of managed key registry entry names that the mount in question is allowed to access
        |||,
    } },
    withAllowedManagedKeys(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
    } },
    '#withAllowedResponseHeaders':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withAllowedResponseHeaders(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
    } },
    '#withAuditNonHmacRequestKeys':: { 'function': {
      help:
        |||
          Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
        |||,
    } },
    withAuditNonHmacRequestKeys(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
    } },
    '#withAuditNonHmacResponseKeys':: { 'function': {
      help:
        |||
          Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
        |||,
    } },
    withAuditNonHmacResponseKeys(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
    } },
    '#withBootstrap':: { 'function': {
      help:
        |||
          Denotes a backend resource that is used to bootstrap the Consul ACL system. Only one resource may be used to bootstrap.
        |||,
    } },
    withBootstrap(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { bootstrap: value } },
    } },
    '#withCaCert':: { 'function': {
      help:
        |||
          CA certificate to use when verifying Consul server certificate, must be x509 PEM encoded.
        |||,
    } },
    withCaCert(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { ca_cert: value } },
    } },
    '#withClientCert':: { 'function': {
      help:
        |||
          Client certificate used for Consul's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_key.
        |||,
    } },
    withClientCert(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { client_cert: value } },
    } },
    '#withClientKey':: { 'function': {
      help:
        |||
          Client key used for Consul's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert. Mutually exclusive with 'client_key_wo'.
        |||,
    } },
    withClientKey(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { client_key: value } },
    } },
    '#withClientKeyWo':: { 'function': {
      help:
        |||
          Client key used for Consul's TLS communication, must be x509 PEM encoded. This field is write-only and will never be stored in state. Mutually exclusive with 'client_key'. Requires 'client_key_wo_version' to trigger updates.
        |||,
    } },
    withClientKeyWo(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { client_key_wo: value } },
    } },
    '#withClientKeyWoVersion':: { 'function': {
      help:
        |||
          Version counter for the write-only client key. Increment this value to trigger rotation of the client key. Required when using 'client_key_wo'.
        |||,
    } },
    withClientKeyWoVersion(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { client_key_wo_version: value } },
    } },
    '#withDefaultLeaseTtlSeconds':: { 'function': {
      help:
        |||
          Default lease duration for secrets in seconds
        |||,
    } },
    withDefaultLeaseTtlSeconds(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
    } },
    '#withDelegatedAuthAccessors':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withDelegatedAuthAccessors(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
    } },
    '#withDescription':: { 'function': {
      help:
        |||
          Human-friendly description of the mount for the backend.
        |||,
    } },
    withDescription(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { description: value } },
    } },
    '#withDisableRemount':: { 'function': {
      help:
        |||
          If set, opts out of mount migration on path updates.
        |||,
    } },
    withDisableRemount(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { disable_remount: value } },
    } },
    '#withExternalEntropyAccess':: { 'function': {
      help:
        |||
          Enable the secrets engine to access Vault's external entropy source
        |||,
    } },
    withExternalEntropyAccess(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
    } },
    '#withForceNoCache':: { 'function': {
      help:
        |||
          If set to true, disables caching.
        |||,
    } },
    withForceNoCache(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { force_no_cache: value } },
    } },
    withId(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { id: value } },
    } },
    '#withIdentityTokenKey':: { 'function': {
      help:
        |||
          The key to use for signing plugin workload identity tokens
        |||,
    } },
    withIdentityTokenKey(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { identity_token_key: value } },
    } },
    '#withListingVisibility':: { 'function': {
      help:
        |||
          Specifies whether to show this mount in the UI-specific listing endpoint
        |||,
    } },
    withListingVisibility(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { listing_visibility: value } },
    } },
    '#withLocal':: { 'function': {
      help:
        |||
          Specifies if the secret backend is local only
        |||,
    } },
    withLocal(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { 'local': value } },
    } },
    '#withMaxLeaseTtlSeconds':: { 'function': {
      help:
        |||
          Maximum possible lease duration for secrets in seconds
        |||,
    } },
    withMaxLeaseTtlSeconds(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withOptions':: { 'function': {
      help:
        |||
          Specifies mount type specific options that are passed to the backend
        |||,
    } },
    withOptions(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { options: value } },
    } },
    '#withPassthroughRequestHeaders':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withPassthroughRequestHeaders(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Unique name of the Vault Consul mount to configure
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { path: value } },
    } },
    '#withPluginVersion':: { 'function': {
      help:
        |||
          Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
        |||,
    } },
    withPluginVersion(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { plugin_version: value } },
    } },
    '#withScheme':: { 'function': {
      help:
        |||
          Specifies the URL scheme to use. Defaults to "http".
        |||,
    } },
    withScheme(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { scheme: value } },
    } },
    '#withSealWrap':: { 'function': {
      help:
        |||
          Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
        |||,
    } },
    withSealWrap(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { seal_wrap: value } },
    } },
    '#withToken':: { 'function': {
      help:
        |||
          Specifies the Consul token to use when managing or issuing new tokens. Mutually exclusive with 'token_wo'.
        |||,
    } },
    withToken(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { token: value } },
    } },
    '#withTokenWo':: { 'function': {
      help:
        |||
          Specifies the Consul token to use when managing or issuing new tokens. This field is write-only and will never be stored in state. Mutually exclusive with 'token'. Requires 'token_wo_version' to trigger updates.
        |||,
    } },
    withTokenWo(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { token_wo: value } },
    } },
    '#withTokenWoVersion':: { 'function': {
      help:
        |||
          Version counter for the write-only token. Increment this value to trigger rotation of the token. Required when using 'token_wo'.
        |||,
    } },
    withTokenWoVersion(value):: self { resource+: {
      vault_consul_secret_backend+: { [terraformName]+: { token_wo_version: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_consul_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': {
        help:
          |||
            Accessor of the mount
          |||,
      } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#address':: { 'function': {
        help:
          |||
            Specifies the address of the Consul instance, provided as "host:port" like "127.0.0.1:8500".
          |||,
      } },
      address(suffix=''):: refSelf.plain('.address%s' % suffix),
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
      '#bootstrap':: { 'function': {
        help:
          |||
            Denotes a backend resource that is used to bootstrap the Consul ACL system. Only one resource may be used to bootstrap.
          |||,
      } },
      bootstrap(suffix=''):: refSelf.plain('.bootstrap%s' % suffix),
      '#ca_cert':: { 'function': {
        help:
          |||
            CA certificate to use when verifying Consul server certificate, must be x509 PEM encoded.
          |||,
      } },
      ca_cert(suffix=''):: refSelf.plain('.ca_cert%s' % suffix),
      '#client_cert':: { 'function': {
        help:
          |||
            Client certificate used for Consul's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_key.
          |||,
      } },
      client_cert(suffix=''):: refSelf.plain('.client_cert%s' % suffix),
      '#client_key':: { 'function': {
        help:
          |||
            Client key used for Consul's TLS communication, must be x509 PEM encoded and if this is set you need to also set client_cert. Mutually exclusive with 'client_key_wo'.
          |||,
      } },
      client_key(suffix=''):: refSelf.plain('.client_key%s' % suffix),
      '#client_key_wo':: { 'function': {
        help:
          |||
            Client key used for Consul's TLS communication, must be x509 PEM encoded. This field is write-only and will never be stored in state. Mutually exclusive with 'client_key'. Requires 'client_key_wo_version' to trigger updates.
          |||,
      } },
      client_key_wo(suffix=''):: refSelf.plain('.client_key_wo%s' % suffix),
      '#client_key_wo_version':: { 'function': {
        help:
          |||
            Version counter for the write-only client key. Increment this value to trigger rotation of the client key. Required when using 'client_key_wo'.
          |||,
      } },
      client_key_wo_version(suffix=''):: refSelf.plain('.client_key_wo_version%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': {
        help:
          |||
            Default lease duration for secrets in seconds
          |||,
      } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
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
            Human-friendly description of the mount for the backend.
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
            Specifies if the secret backend is local only
          |||,
      } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': {
        help:
          |||
            Maximum possible lease duration for secrets in seconds
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
            Unique name of the Vault Consul mount to configure
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
      '#scheme':: { 'function': {
        help:
          |||
            Specifies the URL scheme to use. Defaults to "http".
          |||,
      } },
      scheme(suffix=''):: refSelf.plain('.scheme%s' % suffix),
      '#seal_wrap':: { 'function': {
        help:
          |||
            Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
          |||,
      } },
      seal_wrap(suffix=''):: refSelf.plain('.seal_wrap%s' % suffix),
      '#token':: { 'function': {
        help:
          |||
            Specifies the Consul token to use when managing or issuing new tokens. Mutually exclusive with 'token_wo'.
          |||,
      } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
      '#token_wo':: { 'function': {
        help:
          |||
            Specifies the Consul token to use when managing or issuing new tokens. This field is write-only and will never be stored in state. Mutually exclusive with 'token'. Requires 'token_wo_version' to trigger updates.
          |||,
      } },
      token_wo(suffix=''):: refSelf.plain('.token_wo%s' % suffix),
      '#token_wo_version':: { 'function': {
        help:
          |||
            Version counter for the write-only token. Increment this value to trigger rotation of the token. Required when using 'token_wo'.
          |||,
      } },
      token_wo_version(suffix=''):: refSelf.plain('.token_wo_version%s' % suffix),

    },

  },

}
