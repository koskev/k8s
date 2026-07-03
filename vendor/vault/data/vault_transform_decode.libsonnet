{
  new(terraformName, role_name, path):: {
    _type:: 'tf',
    data+: {
      vault_transform_decode+: { [terraformName]+: {
        role_name: role_name,
        path: path,
      } },
    },
    withRoleName(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { role_name: value } },
      },
    },
    withValue(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { value: value } },
      },
    },
    withTweak(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { tweak: value } },
      },
    },
    withTransformation(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { transformation: value } },
      },
    },
    withDecodedValue(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { decoded_value: value } },
      },
    },
    withBatchResults(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { batch_results: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { namespace: value } },
      },
    },
    withBatchInput(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { batch_input: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { id: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_transform_decode+: { [terraformName]+: { path: value } },
      },
    },
  },
}
