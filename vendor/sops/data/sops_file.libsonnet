{
  new(terraformName, source_file):: {
    _type:: 'tf',
    data+: {
      sops_file+: { [terraformName]+: {
        source_file: source_file,
      } },
    },
    withId(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { id: value } },
      },
    },
    withInputType(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { input_type: value } },
      },
    },
    withData(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { data: value } },
      },
    },
    withRaw(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { raw: value } },
      },
    },
    withSourceFile(value):: self {
      data+: {
        sops_file+: { [terraformName]+: { source_file: value } },
      },
    },
  },
}
