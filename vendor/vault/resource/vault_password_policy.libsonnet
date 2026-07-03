{
  new(terraformName, name, policy):: {
    _type:: 'tf',
    resource+: {
      vault_password_policy+: { [terraformName]+: {
        name: name,
        policy: policy,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    withEntropySource(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { entropy_source: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { id: value } },
      },
    },
    withPolicy(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
}
