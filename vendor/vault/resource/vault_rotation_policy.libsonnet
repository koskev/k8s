{
  new(terraformName, max_retries_per_cycle, name, max_retry_cycles):: {
    _type:: 'tf',
    resource+: {
      vault_rotation_policy+: { [terraformName]+: {
        max_retries_per_cycle: max_retries_per_cycle,
        name: name,
        max_retry_cycles: max_retry_cycles,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    withMaxRetriesPerCycle(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { max_retries_per_cycle: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { name: value } },
      },
    },
    withMaxRetryCycles(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { max_retry_cycles: value } },
      },
    },
  },
}
