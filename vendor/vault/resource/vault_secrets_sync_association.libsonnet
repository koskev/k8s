{
  new(terraformName, secret_name, type, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_association+: { [terraformName]+: {
        secret_name: secret_name,
        type: type,
        mount: mount,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { id: value } },
      },
    },
    withSecretName(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { secret_name: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { namespace: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { type: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { mount: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { name: value } },
      },
    },
    withMetadata(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { metadata: value } },
      },
    },
  },
}
