{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_auth_backends+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      The type of the auth backend. 
    ||| } },
    withType(value):: self {
      data+: {
        vault_auth_backends+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_auth_backends.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessors':: { 'function': { help: |||
        The accessors of the auth backends. 
      ||| } },
      accessors(suffix=''):: refSelf.plain('.accessors%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#paths':: { 'function': { help: |||
        The auth backend mount points. 
      ||| } },
      paths(suffix=''):: refSelf.plain('.paths%s' % suffix),
      '#type':: { 'function': { help: |||
        The type of the auth backend. 
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
