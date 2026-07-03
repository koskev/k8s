{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_config+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDisabled':: { 'function': { help: |||
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
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withQueueCapacity':: { 'function': { help: |||
      Maximum number of pending sync operations allowed on the queue. 
    ||| } },
    withQueueCapacity(value):: self {
      resource+: {
        vault_secrets_sync_config+: { [terraformName]+: { queue_capacity: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_secrets_sync_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#disabled':: { 'function': { help: |||
        Disables the syncing process between Vault and external destinations. 
      ||| } },
      disabled(suffix=''):: refSelf.plain('.disabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#queue_capacity':: { 'function': { help: |||
        Maximum number of pending sync operations allowed on the queue. 
      ||| } },
      queue_capacity(suffix=''):: refSelf.plain('.queue_capacity%s' % suffix),
    },
  },
}
