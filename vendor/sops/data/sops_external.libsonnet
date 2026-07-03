{
  new(terraformName, source):: {
    _type:: 'tf',
    data+: {
      sops_external+: { [terraformName]+: {
        source: source,
      } },
    },
    withSource(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { source: value } },
      },
    },
    withId(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { id: value } },
      },
    },
    withData(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { data: value } },
      },
    },
    withRaw(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { raw: value } },
      },
    },
    withInputType(value):: self {
      data+: {
        sops_external+: { [terraformName]+: { input_type: value } },
      },
    },
  },
}
