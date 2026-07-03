{
  new(terraformName, allowed_origins):: {
    _type:: 'tf',
    resource+: {
      vault_sys_config_cors+: { [terraformName]+: {
        allowed_origins: allowed_origins,
      } },
    },
    '#withAllowedHeaders': { 'function': { help: |||
      Set of additional custom headers allowed on cross-origin requests. Vault automatically includes standard headers (Content-Type, X-Requested-With, X-Vault-AWS-IAM-Server-ID, X-Vault-MFA, X-Vault-No-Request-Forwarding, X-Vault-Wrap-Format, X-Vault-Wrap-TTL, X-Vault-Policy-Override, Authorization, X-Vault-Token), so only specify custom headers here. 
    ||| } },
    withAllowedHeaders(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_headers: value } },
      },
    },
    '#withAllowedOrigins': { 'function': { help: |||
      Set of origins permitted to make cross-origin requests. Use `*` as the only value to allow all origins. 
    ||| } },
    withAllowedOrigins(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_origins: value } },
      },
    },
    '#withEnabled': { 'function': { help: |||
      (Computed) Whether CORS is currently enabled. Vault automatically sets this to true when allowed_origins is configured. To disable CORS, delete this resource. 
    ||| } },
    withEnabled(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { enabled: value } },
      },
    },
    '#withId': { 'function': { help: |||
      The ID of the CORS configuration. Always set to `sys/config/cors`. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { id: value } },
      },
    },
  },
}
