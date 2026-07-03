{
  new(terraformName, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_transform_alphabet+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
    '#withAlphabet': { 'function': { help: |||
      A string of characters that contains the alphabet set. 
    ||| } },
    withAlphabet(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { alphabet: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      The name of the alphabet. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws". 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { path: value } },
      },
    },
  },
}
