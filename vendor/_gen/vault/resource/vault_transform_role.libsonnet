{
  new(terraformName, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_transform_role+: { [terraformName]+: {
        name: name,
        path: path,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      The mount path for a back-end, for example, the path given in "$ vault auth enable -path=my-aws aws". 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { path: value } },
      },
    },
    '#withTransformations':: { 'function': { help: |||
      A comma separated string or slice of transformations to use. 
    ||| } },
    withTransformations(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { transformations: value } },
      },
    },
  },
}
