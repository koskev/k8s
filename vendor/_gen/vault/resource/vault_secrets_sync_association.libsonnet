{
  new(terraformName, mount, name, secret_name, type):: {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_association+: { [terraformName]+: {
        mount: mount,
        name: name,
        secret_name: secret_name,
        type: type,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { id: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      Metadata for each subkey of the associated secret. 
    ||| } },
    withMetadata(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Specifies the mount where the secret is located. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the destination. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSecretName':: { 'function': { help: |||
      Specifies the name of the secret to synchronize. 
    ||| } },
    withSecretName(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { secret_name: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of sync destination. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { type: value } },
      },
    },
  },
}
