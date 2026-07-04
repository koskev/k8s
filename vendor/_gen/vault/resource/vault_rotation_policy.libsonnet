{
  '#new':: { 'function': { help: |||
    Provides a resource to manage Rotation Policies.
  ||| } },
  local outerSelf = self,
  new(terraformName, max_retries_per_cycle, max_retry_cycles, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
    withForEach(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { providers: value } },
      },
    },
    '#max_retries_per_cycle':: { 'function': { help: |||
      Maximum retries per cycle for this rotation policy.
    ||| } },
    withMaxRetriesPerCycle(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { max_retries_per_cycle: value } },
      },
    },
    '#max_retry_cycles':: { 'function': { help: |||
      Maximum retry cycles for this rotation policy.
    ||| } },
    withMaxRetryCycles(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { max_retry_cycles: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Name of the rotation policy.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_rotation_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
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
