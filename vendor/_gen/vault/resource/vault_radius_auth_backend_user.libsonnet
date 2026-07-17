{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages a RADIUS user registered with a RADIUS Auth Backend in Vault.
      |||,
  } },
  new(terraformName, mount, username):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: {
        mount: mount,
        username: username,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { [name]: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path to the RADIUS auth mount where the user will be registered.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { namespace: value } },
    } },
    '#withPolicies':: { 'function': {
      help:
        |||
          A set of Vault policies to associate with this user. If not set, only the `default` policy will be applicable to the user.
        |||,
    } },
    withPolicies(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { policies: value } },
    } },
    '#withUsername':: { 'function': {
      help:
        |||
          The username to register with the RADIUS auth backend.
        |||,
    } },
    withUsername(value):: self { resource+: {
      vault_radius_auth_backend_user+: { [terraformName]+: { username: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_radius_auth_backend_user.%s%s }' % [terraformName, suffix],
    fields:: {
      '#mount':: { 'function': {
        help:
          |||
            Path to the RADIUS auth mount where the user will be registered.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': {
        help:
          |||
            A set of Vault policies to associate with this user. If not set, only the `default` policy will be applicable to the user.
          |||,
      } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#username':: { 'function': {
        help:
          |||
            The username to register with the RADIUS auth backend.
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),

    },

  },

}
