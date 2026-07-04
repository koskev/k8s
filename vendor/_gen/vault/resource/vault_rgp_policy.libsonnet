{
  local outerSelf = self,
  new(terraformName, enforcement_level, name, policy):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_rgp_policy+: {
        [terraformName]+: {
          enforcement_level: enforcement_level,
          name: name,
          policy: policy,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withEnforcementLevel':: { 'function': { help: |||
      Enforcement level of Sentinel policy. Can be one of: 'advisory', 'soft-mandatory' or 'hard-mandatory'
    ||| } },
    withEnforcementLevel(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { enforcement_level: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the policy
    ||| } },
    withName(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicy':: { 'function': { help: |||
      The policy document
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_rgp_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_rgp_policy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#enforcement_level':: { 'function': { help: |||
        Enforcement level of Sentinel policy. Can be one of: 'advisory', 'soft-mandatory' or 'hard-mandatory'
      ||| } },
      enforcement_level(suffix=''):: refSelf.plain('.enforcement_level%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the policy
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policy':: { 'function': { help: |||
        The policy document
      ||| } },
      policy(suffix=''):: refSelf.plain('.policy%s' % suffix),
    },
  },
}
