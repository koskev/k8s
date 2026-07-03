{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: {
        backend: backend,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { namespace: value } },
      },
    },
    withBackend(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { backend: value } },
      },
    },
    withDisablePeriodicTidy(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { disable_periodic_tidy: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { id: value } },
      },
    },
    withSafetyBuffer(value):: self {
      resource+: {
        vault_aws_auth_backend_roletag_blacklist+: { [terraformName]+: { safety_buffer: value } },
      },
    },
  },
}
