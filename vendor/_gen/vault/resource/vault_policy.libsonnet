{
  new(terraformName, name, policy):: {
    _type:: 'tf',
    resource+: {
      vault_policy+: { [terraformName]+: {
        name: name,
        policy: policy,
      } },
    },
    '#withAllowOverwrite': { 'function': { help: |||
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
    '#withName': { 'function': { help: |||
      Name of the policy 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicy': { 'function': { help: |||
      The policy document 
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
}
