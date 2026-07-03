{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_sys_config_cors+: { [terraformName]+: {
      } },
    },
    '#withAllowedHeaders': { 'function': { help: |||
      Set of additional custom headers allowed on cross-origin requests. This only includes custom headers that were explicitly configured, not the standard Vault headers that are automatically included. 
    ||| } },
    withAllowedHeaders(value):: self {
      data+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_headers: value } },
      },
    },
    '#withAllowedOrigins': { 'function': { help: |||
      Set of origins permitted to make cross-origin requests. 
    ||| } },
    withAllowedOrigins(value):: self {
      data+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_origins: value } },
      },
    },
    '#withEnabled': { 'function': { help: |||
      Whether CORS is currently enabled. 
    ||| } },
    withEnabled(value):: self {
      data+: {
        vault_sys_config_cors+: { [terraformName]+: { enabled: value } },
      },
    },
  },
}
