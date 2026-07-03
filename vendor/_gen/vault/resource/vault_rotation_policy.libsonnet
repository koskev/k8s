{
  new(terraformName, max_retries_per_cycle, max_retry_cycles, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_rotation_policy+: {
        [terraformName]+: {
          max_retries_per_cycle: max_retries_per_cycle,
          max_retry_cycles: max_retry_cycles,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMaxRetriesPerCycle':: { 'function': { help: |||
      Maximum retries per cycle for this rotation policy. 
    ||| } },
    withMaxRetriesPerCycle(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { max_retries_per_cycle: value } },
      },
    },
    '#withMaxRetryCycles':: { 'function': { help: |||
      Maximum retry cycles for this rotation policy. 
    ||| } },
    withMaxRetryCycles(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { max_retry_cycles: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the rotation policy. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_rotation_policy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#max_retries_per_cycle':: { 'function': { help: |||
        Maximum retries per cycle for this rotation policy. 
      ||| } },
      max_retries_per_cycle(suffix=''):: refSelf.plain('.max_retries_per_cycle%s' % suffix),
      '#max_retry_cycles':: { 'function': { help: |||
        Maximum retry cycles for this rotation policy. 
      ||| } },
      max_retry_cycles(suffix=''):: refSelf.plain('.max_retry_cycles%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the rotation policy. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
