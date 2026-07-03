{
  new(terraformName, mount, name, secret_name, type):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_secrets_sync_association+: {
        [terraformName]+: {
          mount: mount,
          name: name,
          secret_name: secret_name,
          type: type,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        vault_secrets_sync_association+: { [terraformName]+: { id: value } },
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_secrets_sync_association.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata for each subkey of the associated secret. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mount':: { 'function': { help: |||
        Specifies the mount where the secret is located. 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the destination. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#secret_name':: { 'function': { help: |||
        Specifies the name of the secret to synchronize. 
      ||| } },
      secret_name(suffix=''):: refSelf.plain('.secret_name%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of sync destination. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
