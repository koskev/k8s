{
  local outerSelf = self,
  new(terraformName, backend, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_ad_access_credentials+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          AD Secret Backend to read credentials from.
        |||,
    } },
    withBackend(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { namespace: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withRole(value):: self { data+: {
      vault_ad_access_credentials+: { [terraformName]+: { role: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_ad_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            AD Secret Backend to read credentials from.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#current_password':: { 'function': {
        help:
          |||
            Password for the service account.
          |||,
      } },
      current_password(suffix=''):: refSelf.plain('.current_password%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_password':: { 'function': {
        help:
          |||
            Last known password for the service account.
          |||,
      } },
      last_password(suffix=''):: refSelf.plain('.last_password%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#username':: { 'function': {
        help:
          |||
            Name of the service account.
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),

    },

  },

}
