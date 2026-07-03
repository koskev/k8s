{
  new(terraformName, backend, name):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_aws_static_access_credentials+: {
        [terraformName]+: {
          backend: backend,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      AWS Secret Backend to read credentials from. 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_aws_static_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key':: { 'function': { help: |||
        AWS access key ID read from Vault. 
      ||| } },
      access_key(suffix=''):: refSelf.plain('.access_key%s' % suffix),
      '#backend':: { 'function': { help: |||
        AWS Secret Backend to read credentials from. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the role. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#secret_key':: { 'function': { help: |||
        AWS secret key read from Vault. 
      ||| } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
    },
  },
}
