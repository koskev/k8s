{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_identity_oidc_client_creds+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the client.
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_client_creds+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_identity_oidc_client_creds.%s%s }' % [terraformName, suffix],
    fields:: {
      '#client_id':: { 'function': { help: |||
        The Client ID from Vault.
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        The Client Secret from Vault.
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the client.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
