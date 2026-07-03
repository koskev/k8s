{
  new(terraformName, path, name):: {
    _type:: 'tf',
    resource+: {
      vault_transform_role+: { [terraformName]+: {
        path: path,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { id: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { path: value } },
      },
    },
    withTransformations(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { transformations: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_transform_role+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
