{
  new(terraformName, path, name):: {
    _type:: 'tf',
    resource+: {
      vault_transform_template+: { [terraformName]+: {
        path: path,
        name: name,
      } },
    },
    withDecodeFormats(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { decode_formats: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { id: value } },
      },
    },
    withAlphabet(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { alphabet: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { path: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { name: value } },
      },
    },
    withEncodeFormat(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { encode_format: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { type: value } },
      },
    },
    withPattern(value):: self {
      resource+: {
        vault_transform_template+: { [terraformName]+: { pattern: value } },
      },
    },
  },
}
