{
  local outerSelf = self,
  new(terraformName, type):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_auth_backend+: { [terraformName]+: {
        type: type,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { [name]: value } },
    } },
    '#withDescription':: { 'function': {
      help:
        |||
          The description of the auth backend
        |||,
    } },
    withDescription(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { description: value } },
    } },
    '#withDisableRemount':: { 'function': {
      help:
        |||
          If set, opts out of mount migration on path updates.
        |||,
    } },
    withDisableRemount(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { disable_remount: value } },
    } },
    withId(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { id: value } },
    } },
    '#withIdentityTokenKey':: { 'function': {
      help:
        |||
          The key to use for signing identity tokens.
        |||,
    } },
    withIdentityTokenKey(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { identity_token_key: value } },
    } },
    '#withLocal':: { 'function': {
      help:
        |||
          Specifies if the auth method is local only
        |||,
    } },
    withLocal(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { 'local': value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withPath':: { 'function': {
      help:
        |||
          path to mount the backend. This defaults to the type.
        |||,
    } },
    withPath(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { path: value } },
    } },
    withTune(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { tune: value } },
    } },
    '#withType':: { 'function': {
      help:
        |||
          Name of the auth backend
        |||,
    } },
    withType(value):: self { resource+: {
      vault_auth_backend+: { [terraformName]+: { type: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': {
        help:
          |||
            The accessor of the auth backend
          |||,
      } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#description':: { 'function': {
        help:
          |||
            The description of the auth backend
          |||,
      } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_remount':: { 'function': {
        help:
          |||
            If set, opts out of mount migration on path updates.
          |||,
      } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_key':: { 'function': {
        help:
          |||
            The key to use for signing identity tokens.
          |||,
      } },
      identity_token_key(suffix=''):: refSelf.plain('.identity_token_key%s' % suffix),
      '#local':: { 'function': {
        help:
          |||
            Specifies if the auth method is local only
          |||,
      } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
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
            path to mount the backend. This defaults to the type.
          |||,
      } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      tune(suffix=''):: refSelf.plain('.tune%s' % suffix),
      '#type':: { 'function': {
        help:
          |||
            Name of the auth backend
          |||,
      } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),

    },

  },

}
