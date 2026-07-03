{
  new(terraformName, path, role_name):: {
    _type:: 'tf',
    data+: {
      vault_transform_encode+: { [terraformName]+: {
        path: path,
        role_name: role_name,
      } },
    },
    withNamespace(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { namespace: value } },
      },
    },
    withBatchResults(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { batch_results: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { path: value } },
      },
    },
    withTransformation(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { transformation: value } },
      },
    },
    withTweak(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { tweak: value } },
      },
    },
    withValue(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { value: value } },
      },
    },
    withBatchInput(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { batch_input: value } },
      },
    },
    withRoleName(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { role_name: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { id: value } },
      },
    },
    withEncodedValue(value):: self {
      data+: {
        vault_transform_encode+: { [terraformName]+: { encoded_value: value } },
      },
    },
  },
}
