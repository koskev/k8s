{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_config+: { [terraformName]+: {
      } },
    },
    withDisabled(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { disabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withQueueCapacity(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { queue_capacity: value } },
      },
    },
  },
}
