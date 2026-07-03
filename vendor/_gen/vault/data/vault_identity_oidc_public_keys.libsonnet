{
  new(terraformName, name):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_identity_oidc_public_keys+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the provider. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_identity_oidc_public_keys.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#keys':: { 'function': { help: |||
        The public portion of keys for an OIDC provider. Clients can use them to validate the authenticity of an identity token. 
      ||| } },
      keys(suffix=''):: refSelf.plain('.keys%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the provider. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
