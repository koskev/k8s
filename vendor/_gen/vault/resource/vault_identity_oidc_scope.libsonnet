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
    withForEach(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { providers: value } },
      },
    },
    '#description':: { 'function': { help: |||
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
    '#name':: { 'function': { help: |||
      The name of the scope. The openid scope name is reserved.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_scope+: { [terraformName]+: { namespace: value } },
      },
    },
    '#template':: { 'function': { help: |||
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
