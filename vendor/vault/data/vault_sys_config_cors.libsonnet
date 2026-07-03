{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_sys_config_cors+: { [terraformName]+: {
      } },
    },
    withEnabled(value):: self {
      data+: {
        vault_sys_config_cors+: { [terraformName]+: { enabled: value } },
      },
    },
    withAllowedHeaders(value):: self {
      data+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_headers: value } },
      },
    },
    withAllowedOrigins(value):: self {
      data+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_origins: value } },
      },
    },
  },
}
