{
  new(terraformName, max_retries_per_cycle, max_retry_cycles, name):: {
    _type:: 'tf',
    resource+: {
      vault_rotation_policy+: { [terraformName]+: {
        max_retries_per_cycle: max_retries_per_cycle,
        max_retry_cycles: max_retry_cycles,
        name: name,
      } },
    },
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
}
