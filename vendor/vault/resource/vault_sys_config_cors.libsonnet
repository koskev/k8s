{
  new(terraformName, allowed_origins):: {
    _type:: 'tf',
    resource+: {
      vault_sys_config_cors+: { [terraformName]+: {
        allowed_origins: allowed_origins,
      } },
    },
    withAllowedOrigins(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_origins: value } },
      },
    },
    withEnabled(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { id: value } },
      },
    },
    withAllowedHeaders(value):: self {
      resource+: {
        vault_sys_config_cors+: { [terraformName]+: { allowed_headers: value } },
      },
    },
  },
}
