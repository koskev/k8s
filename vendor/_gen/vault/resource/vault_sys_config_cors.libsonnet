{
  '#new':: { 'function': { help: |||
    Manages the CORS configuration for Vault, controlling which origins can make cross-origin requests and which headers are allowed. This resource requires `sudo` capability and must be called from the root namespace.
  ||| } },
  local outerSelf = self,
  new(terraformName, allowed_origins):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_sys_config_cors+: {
        [terraformName]+: {
          allowed_origins: allowed_origins,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { providers: value } },
      },
    },
    '#allowed_headers':: { 'function': { help: |||
      Set of additional custom headers allowed on cross-origin requests. Vault automatically includes standard headers (Content-Type, X-Requested-With, X-Vault-AWS-IAM-Server-ID, X-Vault-MFA, X-Vault-No-Request-Forwarding, X-Vault-Wrap-Format, X-Vault-Wrap-TTL, X-Vault-Policy-Override, Authorization, X-Vault-Token), so only specify custom headers here.
    ||| } },
    withAllowedHeaders(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_headers: value } },
      },
    },
    '#allowed_origins':: { 'function': { help: |||
      Set of origins permitted to make cross-origin requests. Use `*` as the only value to allow all origins.
    ||| } },
    withAllowedOrigins(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_origins: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_sys_config_cors.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_headers':: { 'function': { help: |||
        Set of additional custom headers allowed on cross-origin requests. Vault automatically includes standard headers (Content-Type, X-Requested-With, X-Vault-AWS-IAM-Server-ID, X-Vault-MFA, X-Vault-No-Request-Forwarding, X-Vault-Wrap-Format, X-Vault-Wrap-TTL, X-Vault-Policy-Override, Authorization, X-Vault-Token), so only specify custom headers here.
      ||| } },
      allowed_headers(suffix=''):: refSelf.plain('.allowed_headers%s' % suffix),
      '#allowed_origins':: { 'function': { help: |||
        Set of origins permitted to make cross-origin requests. Use `*` as the only value to allow all origins.
      ||| } },
      allowed_origins(suffix=''):: refSelf.plain('.allowed_origins%s' % suffix),
      '#enabled':: { 'function': { help: |||
        (Computed) Whether CORS is currently enabled. Vault automatically sets this to true when allowed_origins is configured. To disable CORS, delete this resource.
      ||| } },
      enabled(suffix=''):: refSelf.plain('.enabled%s' % suffix),
      '#id':: { 'function': { help: |||
        The ID of the CORS configuration. Always set to `sys/config/cors`.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
