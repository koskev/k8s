{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_policy_document+: { [terraformName]+: {
      } },
    },
    '#withHcl': { 'function': { help: |||
      The above arguments serialized as a standard Vault HCL policy document. 
    ||| } },
    withHcl(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { hcl: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
