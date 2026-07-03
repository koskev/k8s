{
  new(terraformName, path, name):: {
    _type:: 'tf',
    resource+: {
      vault_transform_alphabet+: { [terraformName]+: {
        path: path,
        name: name,
      } },
    },
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
    withNamespace(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { namespace: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { path: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_transform_alphabet+: { [terraformName]+: { name: value } },
      },
    },
  },
}
