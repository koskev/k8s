{
  new(terraformName, backend, name):: {
    _type:: 'tf',
    resource+: {
      vault_rabbitmq_secret_backend_role+: { [terraformName]+: {
        backend: backend,
        name: name,
      } },
    },
    '#withBackend': { 'function': { help: |||
      The path of the Rabbitmq Secret Backend the role belongs to. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Unique name for the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTags': { 'function': { help: |||
      Specifies a comma-separated RabbitMQ management tags. 
    ||| } },
    withTags(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { tags: value } },
      },
    },
  },
}
