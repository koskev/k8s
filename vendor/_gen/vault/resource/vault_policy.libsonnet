{
  new(terraformName, name, policy):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_policy+: {
        [terraformName]+: {
          name: name,
          policy: policy,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAllowOverwrite':: { 'function': { help: |||
      Allow overwriting an existing policy. Defaults to `true` for backwards compatibility purposes. 
    ||| } },
    withAllowOverwrite(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { allow_overwrite: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the policy 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicy':: { 'function': { help: |||
      The policy document 
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_policy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allow_overwrite':: { 'function': { help: |||
        Allow overwriting an existing policy. Defaults to `true` for backwards compatibility purposes. 
      ||| } },
      allow_overwrite(suffix=''):: refSelf.plain('.allow_overwrite%s' % suffix),
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
