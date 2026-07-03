{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    data+: {
      vault_aws_static_access_credentials+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    withSecretKey(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { secret_key: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    withAccessKey(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { access_key: value } },
      },
    },
    withBackend(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
