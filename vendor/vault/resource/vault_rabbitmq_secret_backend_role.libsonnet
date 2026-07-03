{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_rabbitmq_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    withBackend(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    withTags(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { tags: value } },
      },
    },
  },
}
