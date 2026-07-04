{
  local outerSelf = self,
  new(terraformName, path, type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_mount+: {
        [terraformName]+: {
          path: path,
          type: type,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { providers: value } },
      },
    },
    '#allowed_managed_keys':: { 'function': { help: |||
      List of managed key registry entry names that the mount in question is allowed to access
    ||| } },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    '#allowed_response_headers':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    '#audit_non_hmac_request_keys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the request data object.
    ||| } },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    '#audit_non_hmac_response_keys':: { 'function': { help: |||
      Specifies the list of keys that will not be HMAC'd by audit devices in the response data object.
    ||| } },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    '#default_lease_ttl_seconds':: { 'function': { help: |||
      Default lease duration for tokens and secrets in seconds
    ||| } },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    '#delegated_auth_accessors':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    '#description':: { 'function': { help: |||
      Human-friendly description of the mount
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { description: value } },
      },
    },
    '#external_entropy_access':: { 'function': { help: |||
      Enable the secrets engine to access Vault's external entropy source
    ||| } },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    '#force_no_cache':: { 'function': { help: |||
      If set to true, disables caching.
    ||| } },
    withForceNoCache(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { id: value } },
      },
    },
    '#identity_token_key':: { 'function': { help: |||
      The key to use for signing plugin workload identity tokens
    ||| } },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    '#listing_visibility':: { 'function': { help: |||
      Specifies whether to show this mount in the UI-specific listing endpoint
    ||| } },
    withListingVisibility(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    '#local':: { 'function': { help: |||
      Local mount flag that can be explicitly set to true to enforce local mount in HA environment
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { 'local': value } },
      },
    },
    '#max_lease_ttl_seconds':: { 'function': { help: |||
      Maximum possible lease duration for tokens and secrets in seconds
    ||| } },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { namespace: value } },
      },
    },
    '#options':: { 'function': { help: |||
      Specifies mount type specific options that are passed to the backend
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { options: value } },
      },
    },
    '#passthrough_request_headers':: { 'function': { help: |||
      List of headers to allow and pass from the request to the plugin
    ||| } },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    '#path':: { 'function': { help: |||
      Where the secret backend will be mounted
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { path: value } },
      },
    },
    '#plugin_version':: { 'function': { help: |||
      Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
    ||| } },
    withPluginVersion(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { plugin_version: value } },
      },
    },
    '#seal_wrap':: { 'function': { help: |||
      Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
    ||| } },
    withSealWrap(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    '#type':: { 'function': { help: |||
      Type of the backend, such as 'aws'
    ||| } },
    withType(value):: self {
      resource+: {
        vault_mount+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mount.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        Accessor of the mount
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
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
      '#default_lease_ttl_seconds':: { 'function': { help: |||
        Default lease duration for tokens and secrets in seconds
      ||| } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
      '#delegated_auth_accessors':: { 'function': { help: |||
        List of headers to allow and pass from the request to the plugin
      ||| } },
      delegated_auth_accessors(suffix=''):: refSelf.plain('.delegated_auth_accessors%s' % suffix),
      '#description':: { 'function': { help: |||
        Human-friendly description of the mount
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
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
        Local mount flag that can be explicitly set to true to enforce local mount in HA environment
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': { help: |||
        Maximum possible lease duration for tokens and secrets in seconds
      ||| } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
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
      '#path':: { 'function': { help: |||
        Where the secret backend will be mounted
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#plugin_version':: { 'function': { help: |||
        Specifies the semantic version of the plugin to use, e.g. 'v1.0.0'
      ||| } },
      plugin_version(suffix=''):: refSelf.plain('.plugin_version%s' % suffix),
      '#seal_wrap':: { 'function': { help: |||
        Enable seal wrapping for the mount, causing values stored by the mount to be wrapped by the seal's encryption capability
      ||| } },
      seal_wrap(suffix=''):: refSelf.plain('.seal_wrap%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of the backend, such as 'aws'
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
