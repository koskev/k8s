{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_config+: { [terraformName]+: {
      } },
    },
    '#withDisabled': { 'function': { help: |||
      Disables the syncing process between Vault and external destinations. 
    ||| } },
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
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withQueueCapacity': { 'function': { help: |||
      Maximum number of pending sync operations allowed on the queue. 
    ||| } },
    withQueueCapacity(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { queue_capacity: value } },
      },
    },
  },
}
