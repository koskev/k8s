{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: {
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { namespace: value } },
      },
    },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { safety_buffer: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { id: value } },
      },
    },
    withDisablePeriodicTidy(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { disable_periodic_tidy: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_identity_whitelist+: { [terraformName]+: { backend: value } },
      },
    },
  },
}
