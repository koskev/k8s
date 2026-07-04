{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
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
    withForEach(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { id: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The name of the provider.
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_public_keys+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
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
