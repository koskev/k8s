{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_auth_backends+: { [terraformName]+: {
      } },
    },
    withType(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { type: value } },
      },
    },
    withPaths(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { paths: value } },
      },
    },
    withAccessors(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { accessors: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { id: value } },
      },
    },
  },
}
