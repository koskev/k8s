{
  local outerSelf = self,
  new(terraformName, path, scope):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: {
        path: path,
        scope: scope,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { [name]: value } },
    } },
    '#withForce':: { 'function': {
      help:
        |||
          Force deletion even if there are managed objects in the scope
        |||,
    } },
    withForce(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { force: value } },
    } },
    withId(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          Path where KMIP backend is mounted
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { path: value } },
    } },
    '#withScope':: { 'function': {
      help:
        |||
          Name of the scope
        |||,
    } },
    withScope(value):: self { resource+: {
      vault_kmip_secret_scope+: { [terraformName]+: { scope: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kmip_secret_scope.%s%s }' % [terraformName, suffix],
    fields:: {
      '#force':: { 'function': {
        help:
          |||
            Force deletion even if there are managed objects in the scope
          |||,
      } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': {
        help:
          |||
            Path where KMIP backend is mounted
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#scope':: { 'function': {
        help:
          |||
            Name of the scope
          |||,
      } },
      scope(suffix=''):: refSelf.plain('.scope%s' % suffix),

    },

  },

}
