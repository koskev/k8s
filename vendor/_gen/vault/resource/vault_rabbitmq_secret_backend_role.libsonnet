{
  local outerSelf = self,
  new(terraformName, backend, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_rabbitmq_secret_backend_role+: {
        [terraformName]+: {
          backend: backend,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
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
    '#withName':: { 'function': { help: |||
      Unique name for the role.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTags':: { 'function': { help: |||
      Specifies a comma-separated RabbitMQ management tags.
    ||| } },
    withTags(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend_role+: { [terraformName]+: { tags: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_rabbitmq_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The path of the Rabbitmq Secret Backend the role belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Unique name for the role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#tags':: { 'function': { help: |||
        Specifies a comma-separated RabbitMQ management tags.
      ||| } },
      tags(suffix=''):: refSelf.plain('.tags%s' % suffix),
    },
  },
}
