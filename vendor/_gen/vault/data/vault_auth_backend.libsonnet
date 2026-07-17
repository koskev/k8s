{
  local outerSelf = self,
  new(terraformName, path):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_auth_backend+: { [terraformName]+: {
        path: path,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          The auth backend mount point.
        |||,
    } },
    withPath(value):: self { data+: {
      vault_auth_backend+: { [terraformName]+: { path: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': {
        help:
          |||
            The accessor of the auth backend.
          |||,
      } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#default_lease_ttl_seconds':: { 'function': {
        help:
          |||
            Default lease duration in seconds
          |||,
      } },
      default_lease_ttl_seconds(suffix=''):: refSelf.plain('.default_lease_ttl_seconds%s' % suffix),
      '#description':: { 'function': {
        help:
          |||
            The description of the auth backend.
          |||,
      } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#listing_visibility':: { 'function': {
        help:
          |||
            Specifies whether to show this mount in the UI-specific listing endpoint.
          |||,
      } },
      listing_visibility(suffix=''):: refSelf.plain('.listing_visibility%s' % suffix),
      '#local':: { 'function': {
        help:
          |||
            Specifies if the auth method is local only
          |||,
      } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_lease_ttl_seconds':: { 'function': {
        help:
          |||
            Maximum possible lease duration in seconds
          |||,
      } },
      max_lease_ttl_seconds(suffix=''):: refSelf.plain('.max_lease_ttl_seconds%s' % suffix),
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
            The auth backend mount point.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            The name of the auth backend.
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
