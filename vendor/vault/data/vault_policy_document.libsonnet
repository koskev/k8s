{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_policy_document+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { id: value } },
      },
    },
    withHcl(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { hcl: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
