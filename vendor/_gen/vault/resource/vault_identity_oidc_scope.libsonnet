{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_scope+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDescription':: { 'function': { help: |||
      The scope's description.
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the scope. The openid scope name is reserved.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTemplate':: { 'function': { help: |||
      The template string for the scope. This may be provided as escaped JSON or base64 encoded JSON.
    ||| } },
    withTemplate(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { template: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_scope.%s%s }' % [terraformName, suffix],
    fields:: {
      '#description':: { 'function': { help: |||
        The scope's description.
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the scope. The openid scope name is reserved.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#template':: { 'function': { help: |||
        The template string for the scope. This may be provided as escaped JSON or base64 encoded JSON.
      ||| } },
      template(suffix=''):: refSelf.plain('.template%s' % suffix),
    },
  },
}
