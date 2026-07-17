{
  local outerSelf = self,
  new(terraformName, connection_uri, username):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: {
        connection_uri: connection_uri,
        username: username,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { [name]: value } },
    } },
    '#withAllowedManagedKeys':: { 'function': {
      help:
        |||
          List of managed key registry entry names that the mount in question is allowed to access
        |||,
    } },
    withAllowedManagedKeys(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
    } },
    '#withAllowedResponseHeaders':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withAllowedResponseHeaders(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
    } },
    '#withAuditNonHmacRequestKeys':: { 'function': {
      help:
        |||
          Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
        |||,
    } },
    withAuditNonHmacRequestKeys(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
    } },
    '#withAuditNonHmacResponseKeys':: { 'function': {
      help:
        |||
          Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
        |||,
    } },
    withAuditNonHmacResponseKeys(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
    } },
    '#withConnectionUri':: { 'function': {
      help:
        |||
          Specifies the RabbitMQ connection URI.
        |||,
    } },
    withConnectionUri(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { connection_uri: value } },
    } },
    '#withDefaultLeaseTtlSeconds':: { 'function': {
      help:
        |||
          Default lease duration for secrets in seconds
        |||,
    } },
    withDefaultLeaseTtlSeconds(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
    } },
    '#withDelegatedAuthAccessors':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withDelegatedAuthAccessors(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
    } },
    '#withDescription':: { 'function': {
      help:
        |||
          Human-friendly description of the mount for the backend.
        |||,
    } },
    withDescription(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { description: value } },
    } },
    '#withDisableRemount':: { 'function': {
      help:
        |||
          If set, opts out of mount migration on path updates.
        |||,
    } },
    withDisableRemount(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { disable_remount: value } },
    } },
    '#withExternalEntropyAccess':: { 'function': {
      help:
        |||
          Enable the secrets engine to access Vault's external entropy source
        |||,
    } },
    withExternalEntropyAccess(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
    } },
    '#withForceNoCache':: { 'function': {
      help:
        |||
          If set to true, disables caching.
        |||,
    } },
    withForceNoCache(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { force_no_cache: value } },
    } },
    withId(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { id: value } },
    } },
    '#withIdentityTokenKey':: { 'function': {
      help:
        |||
          The key to use for signing plugin workload identity tokens
        |||,
    } },
    withIdentityTokenKey(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { identity_token_key: value } },
    } },
    '#withListingVisibility':: { 'function': {
      help:
        |||
          Specifies whether to show this mount in the UI-specific listing endpoint
        |||,
    } },
    withListingVisibility(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { listing_visibility: value } },
    } },
    '#withLocal':: { 'function': {
      help:
        |||
          Local mount flag that can be explicitly set to true to enforce local mount in HA environment
        |||,
    } },
    withLocal(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { 'local': value } },
    } },
    '#withMaxLeaseTtlSeconds':: { 'function': {
      help:
        |||
          Maximum possible lease duration for secrets in seconds
        |||,
    } },
    withMaxLeaseTtlSeconds(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withOptions':: { 'function': {
      help:
        |||
          Specifies mount type specific options that are passed to the backend
        |||,
    } },
    withOptions(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { options: value } },
    } },
    '#withPassthroughRequestHeaders':: { 'function': {
      help:
        |||
          List of headers to allow and pass from the request to the plugin
        |||,
    } },
    withPassthroughRequestHeaders(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
    } },
    '#withPassword':: { 'function': {
      help:
        |||
          Specifies the RabbitMQ management administrator password
        |||,
    } },
    withPassword(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { password: value } },
    } },
    '#withPasswordPolicy':: { 'function': {
      help:
        |||
          Specifies a password policy to use when creating dynamic credentials. Defaults to generating an alphanumeric password if not set.
        |||,
    } },
    withPasswordPolicy(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { password_policy: value } },
    } },
    '#withPasswordWo':: { 'function': {
      help:
        |||
          Specifies the RabbitMQ management administrator password. This is a write-only field and will not be read back from Vault.
        |||,
    } },
    withPasswordWo(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { password_wo: value } },
    } },
    '#withPasswordWoVersion':: { 'function': {
      help:
        |||
          A version counter for the write-only password_wo field. Incrementing this value will trigger an update to the password.
        |||,
    } },
    withPasswordWoVersion(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { password_wo_version: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          The path of the RabbitMQ Secret Backend where the connection should be configured
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { path: value } },
    } },
    '#withPluginVersion':: { 'function': {
      help:
        |||
          Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
        |||,
    } },
    withPluginVersion(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { plugin_version: value } },
    } },
    '#withSealWrap':: { 'function': {
      help:
        |||
          Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
        |||,
    } },
    withSealWrap(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { seal_wrap: value } },
    } },
    '#withUsername':: { 'function': {
      help:
        |||
          Specifies the RabbitMQ management administrator username
        |||,
    } },
    withUsername(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { username: value } },
    } },
    '#withUsernameTemplate':: { 'function': {
      help:
        |||
          Template describing how dynamic usernames are generated.
        |||,
    } },
    withUsernameTemplate(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { username_template: value } },
    } },
    '#withVerifyConnection':: { 'function': {
      help:
        |||
          Specifies whether to verify connection URI, username, and password.
        |||,
    } },
    withVerifyConnection(value):: self { resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: { verify_connection: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_rabbitmq_secret_backend.%s%s }' % [terraformName, suffix],
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
      '#connection_uri':: { 'function': {
        help:
          |||
            Specifies the RabbitMQ connection URI.
          |||,
      } },
      connection_uri(suffix=''):: refSelf.plain('.connection_uri%s' % suffix),
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
            Local mount flag that can be explicitly set to true to enforce local mount in HA environment
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
      '#password':: { 'function': {
        help:
          |||
            Specifies the RabbitMQ management administrator password
          |||,
      } },
      password(suffix=''):: refSelf.plain('.password%s' % suffix),
      '#password_policy':: { 'function': {
        help:
          |||
            Specifies a password policy to use when creating dynamic credentials. Defaults to generating an alphanumeric password if not set.
          |||,
      } },
      password_policy(suffix=''):: refSelf.plain('.password_policy%s' % suffix),
      '#password_wo':: { 'function': {
        help:
          |||
            Specifies the RabbitMQ management administrator password. This is a write-only field and will not be read back from Vault.
          |||,
      } },
      password_wo(suffix=''):: refSelf.plain('.password_wo%s' % suffix),
      '#password_wo_version':: { 'function': {
        help:
          |||
            A version counter for the write-only password_wo field. Incrementing this value will trigger an update to the password.
          |||,
      } },
      password_wo_version(suffix=''):: refSelf.plain('.password_wo_version%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            The path of the RabbitMQ Secret Backend where the connection should be configured
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
      '#username':: { 'function': {
        help:
          |||
            Specifies the RabbitMQ management administrator username
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
      '#username_template':: { 'function': {
        help:
          |||
            Template describing how dynamic usernames are generated.
          |||,
      } },
      username_template(suffix=''):: refSelf.plain('.username_template%s' % suffix),
      '#verify_connection':: { 'function': {
        help:
          |||
            Specifies whether to verify connection URI, username, and password.
          |||,
      } },
      verify_connection(suffix=''):: refSelf.plain('.verify_connection%s' % suffix),

    },

  },

}
