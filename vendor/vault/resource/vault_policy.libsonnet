{
  new(terraformName, policy, name):: {
    _type:: 'tf',
    resource+: {
      vault_policy+: { [terraformName]+: {
        policy: policy,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { id: value } },
      },
    },
    withPolicy(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { policy: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_policy+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
