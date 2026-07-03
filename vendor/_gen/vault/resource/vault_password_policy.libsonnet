{
  new(terraformName, name, policy):: {
    _type:: 'tf',
    resource+: {
      vault_password_policy+: { [terraformName]+: {
        name: name,
        policy: policy,
      } },
    },
    '#withEntropySource': { 'function': { help: |||
      Specifies an override to the default source of entropy (randomness) used to generate the passwords. Must be one of: '', 'platform', or 'seal'. Requires Vault 1.21+. 
    ||| } },
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
    '#withName': { 'function': { help: |||
      Name of the password policy. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPolicy': { 'function': { help: |||
      The password policy document 
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
}
